import 'package:flutter/material.dart';

const Color _kGreen = Color(0xFF008A0E);
const Color _kPageBackground = Color(0xFFE9E9E9);
const Color _kCardBackground = Color(0xFFE3E3E3);
const Color _kTextMuted = Color(0xFF6A6A6A);
const double _kDeliveryFee = 5;
const double _kFreeDeliveryThreshold = 35;

void main() {
  runApp(const PharmaxApp());
}

class PharmaxApp extends StatelessWidget {
  const PharmaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharmax',
      theme: ThemeData(
        scaffoldBackgroundColor: _kPageBackground,
        fontFamily: 'Trebuchet MS',
        colorScheme: ColorScheme.fromSeed(seedColor: _kGreen),
      ),
      home: const AppRoot(),
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int _selectedTab = 0;
  int _orderSequence = 5402;
  String _selectedPaymentMethod = 'Card';
  String _medicineQuery = '';
  String _medicineCategory = 'All';
  final Map<String, int> _cart = <String, int>{};
  final List<OrderRecord> _orders = <OrderRecord>[
    const OrderRecord(
      id: 'A-5402',
      status: 'On the way - ETA 30m',
      details: '2 items - Paid by Card',
      total: 22,
    ),
    const OrderRecord(
      id: 'A-5391',
      status: 'Delivered',
      details: '1 item - Cash on delivery',
      total: 12,
    ),
  ];

  int get _cartCount => _cart.values.fold<int>(0, (int s, int q) => s + q);

  double get _cartSubtotal {
    double sum = 0;
    for (final MapEntry<String, int> e in _cart.entries) {
      final MedicineItem item = _catalog.firstWhere((MedicineItem x) => x.id == e.key);
      sum += item.price * e.value;
    }
    return sum;
  }

  List<CartLine> get _cartLines {
    return _cart.entries
        .map((MapEntry<String, int> e) => CartLine(item: _findMedicine(e.key), quantity: e.value))
        .toList();
  }

  MedicineItem _findMedicine(String id) {
    return _catalog.firstWhere((MedicineItem m) => m.id == id);
  }

  List<MedicineItem> get _filteredMedicines {
    return _catalog.where((MedicineItem item) {
      final bool matchesCategory = _medicineCategory == 'All' || item.category == _medicineCategory;
      final String q = _medicineQuery.trim().toLowerCase();
      final bool matchesQuery = q.isEmpty ||
          item.name.toLowerCase().contains(q) ||
          item.details.toLowerCase().contains(q);
      return matchesCategory && matchesQuery;
    }).toList();
  }

  void _addToCart(MedicineItem item) {
    setState(() {
      _cart.update(item.id, (int q) => q + 1, ifAbsent: () => 1);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${item.name} added to cart'),
        action: SnackBarAction(
          label: 'View cart',
          onPressed: _openCart,
        ),
      ),
    );
  }

  Future<void> _openFeature(String id) async {
    final FeatureScreenConfig? config = _features[id];
    if (config == null) return;
    await Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (_) => FeatureDetailScreen(config: config),
      ),
    );
  }

  Future<void> _openOption(String section, String title, [List<String> details = const <String>[]]) async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (_) => OptionDetailScreen(
          section: section,
          title: title,
          details: details.isEmpty ? _defaultOptionDetails(section, title) : details,
        ),
      ),
    );
  }

  Future<void> _openCart() async {
    if (_cart.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Your cart is empty. Add medicines first.')),
      );
      return;
    }

    final CheckoutSubmission? submission = await Navigator.push<CheckoutSubmission>(
      context,
      MaterialPageRoute<CheckoutSubmission>(
        builder: (_) => CartScreen(
          lines: _cartLines,
          initialPaymentMethod: _selectedPaymentMethod,
        ),
      ),
    );

    if (submission == null) return;

    setState(() {
      _selectedPaymentMethod = submission.paymentMethod;
      _cart.clear();
      _orderSequence += 1;
      _orders.insert(
        0,
        OrderRecord(
          id: 'A-$_orderSequence',
          status: 'Confirmed - preparing now',
          details: '${submission.itemCount} items - Paid by ${submission.paymentMethod}',
          total: submission.total,
        ),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Order #A-$_orderSequence confirmed'),
        action: SnackBarAction(
          label: 'View Orders',
          onPressed: () => setState(() => _selectedTab = 1),
        ),
      ),
    );
  }

  List<Widget> _content() {
    switch (_selectedTab) {
      case 0:
        return HomeTab(
          onOpenFeature: _openFeature,
          onOpenOrders: () => setState(() => _selectedTab = 1),
        ).widgets;
      case 1:
        return OrdersTab(
          medicines: _filteredMedicines,
          orders: _orders,
          cartCount: _cartCount,
          cartSubtotal: _cartSubtotal,
          freeDeliveryThreshold: _kFreeDeliveryThreshold,
          searchQuery: _medicineQuery,
          selectedCategory: _medicineCategory,
          onSearchChanged: (String value) => setState(() => _medicineQuery = value),
          onCategoryChanged: (String value) => setState(() => _medicineCategory = value),
          onAddToCart: _addToCart,
          onOpenCart: _openCart,
          onOpenFeature: _openFeature,
          onOpenOption: _openOption,
        ).widgets;
      case 2:
        return ChatTab(onOpenOption: _openOption).widgets;
      case 3:
        return ProfileTab(onOpenFeature: _openFeature).widgets;
      default:
        return const <Widget>[];
    }
  }

  String _title() {
    switch (_selectedTab) {
      case 0:
        return 'Home';
      case 1:
        return 'Orders';
      case 2:
        return 'Chat';
      case 3:
        return 'Profile & settings';
      default:
        return 'Pharmax';
    }
  }

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: _title(),
      content: _content(),
      showBottomNav: true,
      showProfileCard: _selectedTab == 3,
      activeTab: _selectedTab,
      onBottomTap: (int i) => setState(() => _selectedTab = i),
    );
  }
}

class _PharmaxFrame extends StatelessWidget {
  const _PharmaxFrame({
    required this.title,
    required this.content,
    this.showBottomNav = false,
    this.showProfileCard = false,
    this.activeTab = 0,
    this.onBottomTap,
    this.onBack,
  });

  final String title;
  final List<Widget> content;
  final bool showBottomNav;
  final bool showProfileCard;
  final int activeTab;
  final ValueChanged<int>? onBottomTap;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 620),
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _kPageBackground,
                border: Border.all(color: _kGreen),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                        child: Column(
                          children: <Widget>[
                            _Header(
                              title: title,
                              showProfileCard: showProfileCard,
                              onBack: onBack,
                            ),
                            const SizedBox(height: 18),
                            ...content,
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (showBottomNav)
                    _BottomNav(
                      activeIndex: activeTab,
                      onTap: onBottomTap,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.title,
    required this.showProfileCard,
    this.onBack,
  });

  final String title;
  final bool showProfileCard;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    if (showProfileCard) {
      return SizedBox(
        height: 176,
        child: Stack(
          children: <Widget>[
            Container(
              height: 104,
              color: _kGreen,
              child: Stack(
                children: <Widget>[
                  if (onBack != null)
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: onBack,
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  Center(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 38,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
                color: _kCardBackground,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Lekaa Reda', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
                    SizedBox(height: 10),
                    Text('Patient - Verified phone', style: TextStyle(fontSize: 17, color: _kTextMuted)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      height: 92,
      color: _kGreen,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: <Widget>[
          if (onBack != null)
            IconButton(
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back, color: Colors.white),
            )
          else
            const SizedBox(width: 48),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}

class _BottomNav extends StatelessWidget {
  const _BottomNav({required this.activeIndex, this.onTap});

  final int activeIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 14),
      decoration: const BoxDecoration(border: Border(top: BorderSide(color: Color(0x22000000)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _BottomItem(index: 0, letter: 'H', label: 'Home', active: activeIndex == 0, onTap: onTap),
          _BottomItem(index: 1, letter: 'O', label: 'Orders', active: activeIndex == 1, onTap: onTap),
          _BottomItem(index: 2, letter: 'C', label: 'Chat', active: activeIndex == 2, onTap: onTap),
          _BottomItem(index: 3, letter: 'P', label: 'Profile', active: activeIndex == 3, onTap: onTap),
        ],
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  const _BottomItem({
    required this.index,
    required this.letter,
    required this.label,
    required this.active,
    this.onTap,
  });

  final int index;
  final String letter;
  final String label;
  final bool active;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap == null ? null : () => onTap!(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(letter, style: const TextStyle(color: _kGreen, fontSize: 16, fontWeight: FontWeight.w700)),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(fontSize: 14, fontWeight: active ? FontWeight.w700 : FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTab {
  HomeTab({required this.onOpenFeature, required this.onOpenOrders});

  final Future<void> Function(String) onOpenFeature;
  final VoidCallback onOpenOrders;

  List<Widget> get widgets => <Widget>[
        const _SectionTitle('Quick actions'),
        const SizedBox(height: 8),
        _QuickAction(title: 'Buy medicines', subtitle: 'Browse and add to cart', onTap: onOpenOrders),
        _QuickAction(title: 'Emergency', subtitle: 'Call and share location', onTap: () => onOpenFeature('emergency')),
        _QuickAction(
          title: 'Video consultation',
          subtitle: 'Start telepharmacy call',
          onTap: () => onOpenFeature('telepharmacy'),
        ),
        const SizedBox(height: 12),
        _MenuTile(title: 'Health Records', subtitle: 'Labs, Rx, vitals', onTap: () => onOpenFeature('healthRecords')),
        _MenuTile(title: 'Insurance', subtitle: 'Provider, card and verification', onTap: () => onOpenFeature('insurance')),
        _MenuTile(
          title: 'Compare Pharmacies',
          subtitle: 'Sort by price and ETA',
          onTap: () => onOpenFeature('comparePharmacies'),
        ),
      ];
}

class OrdersTab {
  const OrdersTab({
    required this.medicines,
    required this.orders,
    required this.cartCount,
    required this.cartSubtotal,
    required this.freeDeliveryThreshold,
    required this.searchQuery,
    required this.selectedCategory,
    required this.onSearchChanged,
    required this.onCategoryChanged,
    required this.onAddToCart,
    required this.onOpenCart,
    required this.onOpenFeature,
    required this.onOpenOption,
  });

  final List<MedicineItem> medicines;
  final List<OrderRecord> orders;
  final int cartCount;
  final double cartSubtotal;
  final double freeDeliveryThreshold;
  final String searchQuery;
  final String selectedCategory;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<String> onCategoryChanged;
  final ValueChanged<MedicineItem> onAddToCart;
  final VoidCallback onOpenCart;
  final Future<void> Function(String) onOpenFeature;
  final Future<void> Function(String, String, [List<String>]) onOpenOption;

  List<Widget> get widgets => <Widget>[
        _CartSummaryCard(
          cartCount: cartCount,
          cartSubtotal: cartSubtotal,
          freeDeliveryThreshold: freeDeliveryThreshold,
          onOpenCart: onOpenCart,
        ),
        _OrdersSearchCard(
          searchQuery: searchQuery,
          selectedCategory: selectedCategory,
          onSearchChanged: onSearchChanged,
          onCategoryChanged: onCategoryChanged,
        ),
        const _SectionTitle('Buy medicines'),
        const SizedBox(height: 8),
        if (medicines.isEmpty)
          const _SimpleCard(
            title: 'No medicines match your search',
            subtitle: 'Try another keyword or switch category.',
          )
        else
          ...medicines.map(
            (MedicineItem m) => _MedicineCard(
              item: m,
              onAdd: () => onAddToCart(m),
              onView: () => onOpenOption(
                'Medicines',
                m.name,
                <String>[
                  m.details,
                  'Category: ${m.category}',
                  'Price: ${_money(m.price)}',
                  'Add to cart to include this item in checkout.',
                ],
              ),
            ),
          ),
        const SizedBox(height: 10),
        _MenuTile(
          title: 'Payment methods',
          subtitle: 'Card, Wallet, Apple/Google Pay',
          onTap: () => onOpenFeature('paymentCheckout'),
        ),
        const SizedBox(height: 10),
        const _SectionTitle('Recent orders'),
        const SizedBox(height: 8),
        ...orders.map(
          (OrderRecord o) => _OrderCard(
            order: o,
            onView: () => onOpenOption(
              'Orders',
              'Order #${o.id}',
              <String>[
                o.status,
                o.details,
                'Total: ${_money(o.total)}',
              ],
            ),
          ),
        ),
      ];
}

class ChatTab {
  const ChatTab({required this.onOpenOption});

  final Future<void> Function(String, String, [List<String>]) onOpenOption;

  List<Widget> get widgets => <Widget>[
        _SimpleCard(
          title: 'Pharmacy support',
          subtitle: 'Your refill is ready for checkout.',
          onTap: () => onOpenOption(
            'Chat',
            'Pharmacy support',
            <String>[
              'Latest message: Your refill is ready for checkout.',
              'Response time: usually under 2 minutes.',
              'Tap reply in next UX phase.',
            ],
          ),
        ),
        _SimpleCard(
          title: 'Pharmacist - Dr. Rami',
          subtitle: 'Please confirm dosage frequency.',
          onTap: () => onOpenOption(
            'Chat',
            'Pharmacist - Dr. Rami',
            <String>[
              'Topic: dosage confirmation.',
              'Recommended action: send patient response.',
              'Conversation will be real-time with Firebase.',
            ],
          ),
        ),
        _SimpleCard(
          title: 'Caregiver',
          subtitle: 'Reminder set for evening dose.',
          onTap: () => onOpenOption(
            'Chat',
            'Caregiver',
            <String>[
              'Reminder synced for evening dose.',
              'Share adherence summary weekly.',
              'Notification preferences will be configurable.',
            ],
          ),
        ),
      ];
}

class ProfileTab {
  ProfileTab({required this.onOpenFeature});

  final Future<void> Function(String) onOpenFeature;

  List<Widget> get widgets => <Widget>[
        _MenuTile(title: 'Language', onTap: () => onOpenFeature('language')),
        _MenuTile(title: 'Accessibility (Large text)', onTap: () => onOpenFeature('accessibility')),
        _MenuTile(title: 'Privacy', onTap: () => onOpenFeature('privacy')),
        _MenuTile(title: 'Payment methods', onTap: () => onOpenFeature('paymentCheckout')),
        _MenuTile(title: 'Notifications', onTap: () => onOpenFeature('notificationsCenter')),
        _MenuTile(title: 'Help & support', onTap: () => onOpenFeature('helpSupport')),
      ];
}

class CartScreen extends StatefulWidget {
  const CartScreen({required this.lines, required this.initialPaymentMethod, super.key});

  final List<CartLine> lines;
  final String initialPaymentMethod;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late final Map<String, CartLine> _lines = <String, CartLine>{for (final CartLine l in widget.lines) l.item.id: l};

  List<CartLine> get _activeLines => _lines.values.where((CartLine l) => l.quantity > 0).toList();
  double get _subtotal => _activeLines.fold<double>(0, (double s, CartLine l) => s + l.total);
  int get _count => _activeLines.fold<int>(0, (int s, CartLine l) => s + l.quantity);

  void _change(String id, int delta) {
    final CartLine? current = _lines[id];
    if (current == null) return;
    final int next = current.quantity + delta;
    setState(() {
      if (next <= 0) {
        _lines.remove(id);
      } else {
        _lines[id] = CartLine(item: current.item, quantity: next);
      }
    });
  }

  Future<void> _goPayment() async {
    if (_activeLines.isEmpty) return;
    final CheckoutSubmission? result = await Navigator.push<CheckoutSubmission>(
      context,
      MaterialPageRoute<CheckoutSubmission>(
        builder: (_) => PaymentMethodsScreen(
          lines: _activeLines,
          subtotal: _subtotal,
          initialMethod: widget.initialPaymentMethod,
        ),
      ),
    );
    if (result != null && mounted) Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: 'Cart',
      onBack: () => Navigator.pop(context),
      content: <Widget>[
        const _CheckoutStepper(currentStep: 1),
        if (_activeLines.isEmpty)
          const _SimpleCard(title: 'Your cart is empty.', subtitle: 'Add medicines from the Orders tab.')
        else ...<Widget>[
          ..._activeLines.map(
            (CartLine l) => _CartLineCard(
              line: l,
              onMinus: () => _change(l.item.id, -1),
              onPlus: () => _change(l.item.id, 1),
            ),
          ),
          _TotalsCard(count: _count, subtotal: _subtotal),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _goPayment,
              child: const Text('Proceed to payment'),
            ),
          ),
        ],
      ],
    );
  }
}

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({
    required this.lines,
    required this.subtotal,
    required this.initialMethod,
    super.key,
  });

  final List<CartLine> lines;
  final double subtotal;
  final String initialMethod;

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  late String _selected = widget.initialMethod;

  Future<void> _continue() async {
    final CheckoutSubmission submission = CheckoutSubmission(
      lines: widget.lines,
      paymentMethod: _selected,
      subtotal: widget.subtotal,
    );
    final bool? done = await Navigator.push<bool>(
      context,
      MaterialPageRoute<bool>(
        builder: (_) => ConfirmOrderScreen(submission: submission),
      ),
    );
    if ((done ?? false) && mounted) Navigator.pop(context, submission);
  }

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: 'Payment methods',
      onBack: () => Navigator.pop(context),
      content: <Widget>[
        const _CheckoutStepper(currentStep: 2),
        _PaymentTile(
          title: 'Card',
          subtitle: '**** 9831',
          selected: _selected == 'Card',
          onTap: () => setState(() => _selected = 'Card'),
        ),
        _PaymentTile(
          title: 'Wallet',
          subtitle: 'Balance available',
          selected: _selected == 'Wallet',
          onTap: () => setState(() => _selected = 'Wallet'),
        ),
        _PaymentTile(
          title: 'Apple/Google Pay',
          subtitle: 'Instant checkout',
          selected: _selected == 'Apple/Google Pay',
          onTap: () => setState(() => _selected = 'Apple/Google Pay'),
        ),
        _TotalsCard(
          count: widget.lines.fold<int>(0, (int s, CartLine l) => s + l.quantity),
          subtotal: widget.subtotal,
        ),
        SizedBox(width: double.infinity, child: FilledButton(onPressed: _continue, child: const Text('Continue'))),
      ],
    );
  }
}

class ConfirmOrderScreen extends StatelessWidget {
  const ConfirmOrderScreen({required this.submission, super.key});

  final CheckoutSubmission submission;

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: 'Confirm order',
      onBack: () => Navigator.pop(context),
      content: <Widget>[
        const _CheckoutStepper(currentStep: 3),
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(14),
          color: _kCardBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Items', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
              const SizedBox(height: 8),
              ...submission.lines.map((CartLine l) => Text('${l.quantity}x ${l.item.name}')),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(14),
          color: _kCardBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Payment: ${submission.paymentMethod}'),
              Text('Subtotal: ${_money(submission.subtotal)}'),
              Text('Delivery: ${_money(_kDeliveryFee)}'),
              const Divider(height: 16),
              Text('Total: ${_money(submission.total)}', style: const TextStyle(fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Place order'),
          ),
        ),
      ],
    );
  }
}

class FeatureDetailScreen extends StatelessWidget {
  const FeatureDetailScreen({required this.config, super.key});

  final FeatureScreenConfig config;

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: config.title,
      onBack: () => Navigator.pop(context),
      content: <Widget>[
        if (config.description != null) _SimpleCard(title: config.description!, subtitle: ''),
        ...config.rows.map(
          (String row) => _MenuTile(
            title: row,
            subtitle: 'Open details',
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => OptionDetailScreen(
                    section: config.title,
                    title: row,
                    details: _defaultOptionDetails(config.title, row),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class OptionDetailScreen extends StatelessWidget {
  const OptionDetailScreen({
    required this.section,
    required this.title,
    required this.details,
    super.key,
  });

  final String section;
  final String title;
  final List<String> details;

  @override
  Widget build(BuildContext context) {
    return _PharmaxFrame(
      title: title,
      onBack: () => Navigator.pop(context),
      content: <Widget>[
        _SimpleCard(title: 'Section: $section', subtitle: ''),
        ...details.map((String detail) => _SimpleCard(title: detail, subtitle: '')),
      ],
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    );
  }
}

class _CheckoutStepper extends StatelessWidget {
  const _CheckoutStepper({required this.currentStep});

  final int currentStep;

  @override
  Widget build(BuildContext context) {
    const List<String> labels = <String>['Cart', 'Payment', 'Confirm'];
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      color: _kCardBackground,
      child: Row(
        children: List<Widget>.generate(labels.length, (int index) {
          final int step = index + 1;
          final bool active = step == currentStep;
          final bool done = step < currentStep;
          return Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 12,
                  backgroundColor: done || active ? _kGreen : const Color(0x33000000),
                  child: done
                      ? const Icon(Icons.check, size: 14, color: Colors.white)
                      : Text(
                          '$step',
                          style: TextStyle(
                            color: active ? Colors.white : Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    labels[index],
                    style: TextStyle(
                      fontWeight: active ? FontWeight.w700 : FontWeight.w500,
                      color: done || active ? Colors.black : _kTextMuted,
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _SimpleCard extends StatelessWidget {
  const _SimpleCard({required this.title, required this.subtitle, this.onTap});

  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      color: _kCardBackground,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                if (subtitle.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: _kTextMuted)),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({required this.title, required this.subtitle, required this.onTap});
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      color: _kCardBackground,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: _kTextMuted)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuTile extends StatelessWidget {
  const _MenuTile({required this.title, this.subtitle, this.onTap});

  final String title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      color: _kCardBackground,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      if (subtitle != null && subtitle!.isNotEmpty)
                        Text(subtitle!, style: const TextStyle(fontSize: 14, color: _kTextMuted)),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: _kTextMuted),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CartSummaryCard extends StatelessWidget {
  const _CartSummaryCard({
    required this.cartCount,
    required this.cartSubtotal,
    required this.freeDeliveryThreshold,
    required this.onOpenCart,
  });

  final int cartCount;
  final double cartSubtotal;
  final double freeDeliveryThreshold;
  final VoidCallback onOpenCart;

  @override
  Widget build(BuildContext context) {
    final double progress = (cartSubtotal / freeDeliveryThreshold).clamp(0, 1);
    final bool unlockedFreeDelivery = cartSubtotal >= freeDeliveryThreshold;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Cart', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
          Text('Items: $cartCount'),
          Text('Subtotal: ${_money(cartSubtotal)}'),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0x22000000),
            color: _kGreen,
            minHeight: 6,
          ),
          const SizedBox(height: 6),
          Text(
            unlockedFreeDelivery
                ? 'Free delivery unlocked'
                : 'Add ${_money(freeDeliveryThreshold - cartSubtotal)} for free delivery',
            style: const TextStyle(color: _kTextMuted),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onOpenCart,
              child: Text('View cart ($cartCount)'),
            ),
          ),
        ],
      ),
    );
  }
}

class _OrdersSearchCard extends StatelessWidget {
  const _OrdersSearchCard({
    required this.searchQuery,
    required this.selectedCategory,
    required this.onSearchChanged,
    required this.onCategoryChanged,
  });

  final String searchQuery;
  final String selectedCategory;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<String> onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    const List<String> categories = <String>['All', 'Rx', 'OTC'];
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: onSearchChanged,
            decoration: const InputDecoration(
              isDense: true,
              hintText: 'Search medicines',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            children: categories
                .map(
                  (String c) => ChoiceChip(
                    label: Text(c),
                    selected: selectedCategory == c,
                    onSelected: (_) => onCategoryChanged(c),
                  ),
                )
                .toList(),
          ),
          if (searchQuery.trim().isNotEmpty) ...<Widget>[
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Searching for: "$searchQuery"',
                style: const TextStyle(color: _kTextMuted),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _MedicineCard extends StatelessWidget {
  const _MedicineCard({required this.item, required this.onAdd, required this.onView});

  final MedicineItem item;
  final VoidCallback onAdd;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(item.name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                Text(item.details, style: const TextStyle(color: _kTextMuted)),
                Text(_money(item.price), style: const TextStyle(fontWeight: FontWeight.w700)),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              FilledButton(onPressed: onAdd, child: const Text('Add')),
              const SizedBox(height: 8),
              OutlinedButton(onPressed: onView, child: const Text('Details')),
            ],
          ),
        ],
      ),
    );
  }
}

class _OrderCard extends StatelessWidget {
  const _OrderCard({required this.order, required this.onView});
  final OrderRecord order;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Order #${order.id}', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
          Text(order.status),
          Text(order.details, style: const TextStyle(color: _kTextMuted)),
          Text('Total: ${_money(order.total)}', style: const TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.centerLeft,
            child: OutlinedButton(onPressed: onView, child: const Text('View details')),
          ),
        ],
      ),
    );
  }
}

class _CartLineCard extends StatelessWidget {
  const _CartLineCard({required this.line, required this.onMinus, required this.onPlus});
  final CartLine line;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(line.item.name, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                Text('${_money(line.item.price)} x ${line.quantity} = ${_money(line.total)}'),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(onPressed: onMinus, icon: const Icon(Icons.remove_circle_outline)),
              Text('${line.quantity}'),
              IconButton(onPressed: onPlus, icon: const Icon(Icons.add_circle_outline)),
            ],
          ),
        ],
      ),
    );
  }
}

class _TotalsCard extends StatelessWidget {
  const _TotalsCard({required this.count, required this.subtotal});
  final int count;
  final double subtotal;

  @override
  Widget build(BuildContext context) {
    final double total = subtotal + _kDeliveryFee;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      color: _kCardBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Items: $count'),
          Text('Subtotal: ${_money(subtotal)}'),
          Text('Delivery: ${_money(_kDeliveryFee)}'),
          const Divider(height: 16),
          Text('Total: ${_money(total)}', style: const TextStyle(fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _PaymentTile extends StatelessWidget {
  const _PaymentTile({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      color: _kCardBackground,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                      Text(subtitle, style: const TextStyle(color: _kTextMuted)),
                    ],
                  ),
                ),
                Icon(selected ? Icons.radio_button_checked : Icons.radio_button_off, color: _kGreen),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MedicineItem {
  const MedicineItem({
    required this.id,
    required this.name,
    required this.details,
    required this.price,
    required this.category,
  });
  final String id;
  final String name;
  final String details;
  final double price;
  final String category;
}

class CartLine {
  const CartLine({required this.item, required this.quantity});
  final MedicineItem item;
  final int quantity;
  double get total => item.price * quantity;
}

class CheckoutSubmission {
  const CheckoutSubmission({required this.lines, required this.paymentMethod, required this.subtotal});
  final List<CartLine> lines;
  final String paymentMethod;
  final double subtotal;
  int get itemCount => lines.fold<int>(0, (int s, CartLine l) => s + l.quantity);
  double get total => subtotal + _kDeliveryFee;
}

class OrderRecord {
  const OrderRecord({
    required this.id,
    required this.status,
    required this.details,
    required this.total,
  });
  final String id;
  final String status;
  final String details;
  final double total;
}

class FeatureScreenConfig {
  const FeatureScreenConfig({
    required this.title,
    required this.rows,
    this.description,
  });
  final String title;
  final String? description;
  final List<String> rows;
}

String _money(double v) => v == v.roundToDouble() ? '\$${v.toStringAsFixed(0)}' : '\$${v.toStringAsFixed(2)}';

const List<MedicineItem> _catalog = <MedicineItem>[
  MedicineItem(
    id: 'amoxicillin',
    name: 'Amoxicillin 500mg',
    details: 'Capsules - 20 count',
    price: 10,
    category: 'Rx',
  ),
  MedicineItem(
    id: 'metformin',
    name: 'Metformin 500mg',
    details: 'Tablets - 30 count',
    price: 12,
    category: 'Rx',
  ),
  MedicineItem(
    id: 'atorvastatin',
    name: 'Atorvastatin 20mg',
    details: 'Tablets - 30 count',
    price: 14,
    category: 'Rx',
  ),
  MedicineItem(
    id: 'vitamin-c',
    name: 'Vitamin C 1000mg',
    details: 'Effervescent - 15 tabs',
    price: 8,
    category: 'OTC',
  ),
];

const Map<String, FeatureScreenConfig> _features = <String, FeatureScreenConfig>{
  'language': FeatureScreenConfig(title: 'Language', rows: <String>['English (active)', 'Arabic']),
  'accessibility': FeatureScreenConfig(title: 'Accessibility', rows: <String>['Large text', 'Voice reminders']),
  'privacy': FeatureScreenConfig(title: 'Privacy', rows: <String>['Biometric unlock', 'Location access']),
  'helpSupport': FeatureScreenConfig(title: 'Help & support', rows: <String>['Live chat support', 'Call support center']),
  'paymentCheckout': FeatureScreenConfig(
    title: 'Payment & Checkout',
    rows: <String>['Card', 'Wallet', 'Apple/Google Pay', 'Promo code', 'Apply', 'Pay Now'],
  ),
  'healthRecords': FeatureScreenConfig(
    title: 'Health Records',
    rows: <String>['Labs', 'Rx', 'Vitals', 'Lab results 20 Feb', 'BP reading 120/80'],
  ),
  'insurance': FeatureScreenConfig(
    title: 'Insurance',
    rows: <String>['Provider: Axa', 'Card #: 1234 5678 9012', 'Coverage: 80%', 'Remaining to pay: \$20'],
  ),
  'comparePharmacies': FeatureScreenConfig(
    title: 'Compare Pharmacies',
    rows: <String>['Al Shorouk - \$10 - 45m', 'Good Health - \$12 - 30m', 'Medico - \$9 - 60m'],
  ),
  'emergency': FeatureScreenConfig(
    title: 'Emergency',
    rows: <String>['Call ambulance', 'Nearest 24/7 pharmacy', 'Share location'],
  ),
  'telepharmacy': FeatureScreenConfig(
    title: 'Telepharmacy Video Call',
    rows: <String>['Video feed', 'Mute', 'Camera', 'Share Rx', 'End'],
  ),
  'notificationsCenter': FeatureScreenConfig(
    title: 'Notifications Center',
    rows: <String>['Dose reminder - Metformin 500mg 08:00', 'Refill soon - 3 days remaining'],
  ),
};

List<String> _defaultOptionDetails(String section, String option) {
  return <String>[
    'Option: $option',
    'This belongs to "$section".',
    'UI is ready for UX refinements and Firebase data binding.',
  ];
}
