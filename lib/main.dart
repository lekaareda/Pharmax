import 'package:flutter/material.dart';

void main() {
  runApp(const PharmaxApp());
}

class PharmaxApp extends StatelessWidget {
  const PharmaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmax',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
        fontFamily: 'Roboto',
      ),
      home: const PaymentCheckoutScreen(),
    );
  }
}

class PaymentCheckoutScreen extends StatelessWidget {
  const PaymentCheckoutScreen({super.key});
      home: const SystemAdminDashboardScreen(),
    );
  }
}

class SystemAdminDashboardScreen extends StatelessWidget {
  const SystemAdminDashboardScreen({super.key});
      home: const PharmacyAdminDashboardScreen(),
    );
  }
}

class PharmacyAdminDashboardScreen extends StatelessWidget {
  const PharmacyAdminDashboardScreen({super.key});
      home: const PharmacistDashboardScreen(),
    );
  }
}

class PharmacistDashboardScreen extends StatelessWidget {
  const PharmacistDashboardScreen({super.key});
      home: const DrugEducationScreen(),
    );
  }
}

class DrugEducationScreen extends StatelessWidget {
  const DrugEducationScreen({super.key});
      home: const NotificationsCenterScreen(),
    );
  }
}

class NotificationsCenterScreen extends StatelessWidget {
  const NotificationsCenterScreen({super.key});
      home: const CaregiverLinkingScreen(),
    );
  }
}

class CaregiverLinkingScreen extends StatelessWidget {
  const CaregiverLinkingScreen({super.key});
      home: const TelepharmacyVideoCallScreen(),
    );
  }
}

class TelepharmacyVideoCallScreen extends StatelessWidget {
  const TelepharmacyVideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF1F7A1F), width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        color: const Color(0xFF008A00),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: const Center(
                          child: Text(
                            'Payment & Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 14, 20, 0),
                        child: Text(
                          'lekaa reda',
                          style: TextStyle(
                            color: Color(0xFF7F8A95),
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(86, 28, 86, 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const _PaymentOptionTile(label: 'Card'),
                            const SizedBox(height: 18),
                            const _PaymentOptionTile(label: 'Wallet'),
                            const SizedBox(height: 18),
                            const _PaymentOptionTile(label: 'Apple/Google Pay'),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const Expanded(
                                  child: _PromoCodeField(),
                                ),
                                SizedBox(
                                  height: 74,
                                  width: 145,
                                  child: FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: const Color(0xFF008A00),
                                      shape: const RoundedRectangleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Apply',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 44),
                            SizedBox(
                              width: double.infinity,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF008A00),
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Pay Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 44,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 700),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(72, 0, 72, 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _BottomNavItem(letter: 'H', label: 'Home'),
                            _BottomNavItem(letter: 'O', label: 'Orders'),
                            _BottomNavItem(letter: 'C', label: 'Chat'),
                            _BottomNavItem(letter: 'P', label: 'Profile'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PaymentOptionTile extends StatelessWidget {
  const _PaymentOptionTile({required this.label});

  final String label;
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'System Admin Dashboard',
                      'Pharmacy Admin Dashboard',
                      'Pharmacist Dashboard',
                      'Drug Education',
                      'Notifications Center',
                      'Caregiver Linking',
                      'Telepharmacy Video Call',
                      style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                      child: Column(
                        children: [
                          const _PhoneNotch(),
                          Container(
                            width: double.infinity,
                            color: const Color(0xFF2E7D32),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 18,
                            ),
                            child: const Text(
                              'System admin',
                              'Pharmacy admin',
                              'Pharmacist dashboard',
                              'Drug education',
                              'Notifications',
                              'Caregiver mode',
                              horizontal: 26,
                              vertical: 18,
                            ),
                            child: const Text(
                              'Video consultation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 56,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(34, 28, 34, 70),
                            padding: const EdgeInsets.fromLTRB(34, 34, 34, 70),
                            child: SizedBox(
                              width: double.infinity,
                              height: 1040,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const _SystemMetricCard(
                                    title: 'Active users',
                                    value: '18,240',
                                  ),
                                  const SizedBox(height: 12),
                                  const _SystemMetricCard(
                                    title: 'Pharmacies',
                                    value: '112',
                                  ),
                                  const SizedBox(height: 12),
                                  const _SystemMetricCard(
                                    title: 'Incidents',
                                    value: '0',
                                  ),
                                  const SizedBox(height: 12),
                                  const _SystemMetricCard(
                                    title: 'Avg response',
                                    value: '< 3s',
                                  ),
                                  const SizedBox(height: 120),
                                  _DashboardActionButton(
                                    label: 'Manage roles & access',
                                  const _AdminMetricCard(
                                    title: 'Inventory low stock',
                                    value: '7',
                                  ),
                                  const SizedBox(height: 12),
                                  const _AdminMetricCard(
                                    title: 'Active deliveries',
                                    value: '4',
                                  ),
                                  const SizedBox(height: 12),
                                  const _AdminMetricCard(
                                    title: 'Revenue today',
                                    value: 'EGP 12,450',
                                  ),
                                  const SizedBox(height: 250),
                                  _DashboardActionButton(
                                    label: 'Manage inventory',
                                    onPressed: () {},
                                  ),
                                  const SizedBox(height: 14),
                                  _DashboardActionButton(
                                    label: 'Manage pharmacists',
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SystemMetricCard extends StatelessWidget {
  const _SystemMetricCard({
          ),
        ),
      ),
    );
  }
}

class _AdminMetricCard extends StatelessWidget {
  const _AdminMetricCard({
                                  const _MetricCard(
                                    title: 'New prescriptions',
                                    value: '12',
                                  ),
                                  const SizedBox(height: 12),
                                  const _MetricCard(
                                    title: 'Pending chats',
                                    value: '5',
                                  ),
                                  const SizedBox(height: 12),
                                  const _MetricCard(
                                    title: 'Orders to verify',
                                    value: '9',
                                  ),
                                  const SizedBox(height: 56),
                                  const Text(
                                    'Today queue',
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 9,
                                    ),
                                children: const [
                                  _NotificationCard(
                                    title: 'Dose reminder',
                                    detail: 'Metformin 500mg • 08:00',
                                    timeLabel: 'Now',
                                  ),
                                  SizedBox(height: 14),
                                  _NotificationCard(
                                    title: 'Missed dose',
                                    detail: 'Atorvastatin • 21:00',
                                    timeLabel: 'Yesterday',
                                  ),
                                  SizedBox(height: 14),
                                  _NotificationCard(
                                    title: 'Refill soon',
                                    detail: 'Metformin remaining 3 days',
                                    timeLabel: '2 days ago',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({
    required this.title,
    required this.detail,
    required this.timeLabel,
  });

  final String title;
  final String detail;
  final String timeLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  detail,
                  style: _fieldTextStyle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                timeLabel,
                style: const TextStyle(
                  color: Color(0xFF8A8A8A),
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

                                children: [
                                  const Text(
                                    'Link caregiver',
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 58,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 14,
                                    ),
                                  const SizedBox(height: 26),
                                  const Text(
                                    'Caregiver phone',
                                    style: _fieldTextStyle,
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    width: double.infinity,
                                    height: 58,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF8D8D8D),
                                        width: 4,
                                      ),
                                    ),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rx #12931  •  Review needed',
                                          style: _fieldTextStyle,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Order #A-5402 •  Substitute approval',
                                          style: _fieldTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 34),
                                    child: const Text(
                                      'Search medicine...',
                                      style: TextStyle(
                                        color: Color(0xFF858585),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const _DrugCard(
                                    title: 'Amoxicillin',
                                    details: 'Usage • Side effects • Video',
                                  ),
                                  const SizedBox(height: 12),
                                  const _DrugCard(
                                    title: 'Metformin',
                                    details: 'How to take • Warnings',
                                  ),
                                  const SizedBox(height: 34),
                                  ),
                                  const SizedBox(height: 24),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FilledButton(
                                      style: FilledButton.styleFrom(
                                        backgroundColor: const Color(0xFF2E7D32),
                                        shape: const RoundedRectangleBorder(),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 18,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Open prescriptions',
                                        'Watch education video',
                                        'Send invite',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      color: const Color(0xFFE8E8E8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 42,
          fontWeight: FontWeight.w500,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title, style: _fieldTextStyle)),
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title, style: _fieldTextStyle)),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF2E7D32),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

                ),
              ),
            ),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: _fieldTextStyle),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(
              color: Color(0xFF2E7D32),
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _PromoCodeField extends StatelessWidget {
  const _PromoCodeField();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      color: const Color(0xFFE8E8E8),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: const Text(
        'Promo code',
        style: TextStyle(
          color: Color(0xFF7F8A95),
          fontSize: 38,
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({required this.letter, required this.label});

  final String letter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          letter,
          style: const TextStyle(
            color: Color(0xFF008A00),
            fontSize: 44,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
class _DashboardActionButton extends StatelessWidget {
  const _DashboardActionButton({
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF2E7D32),
          shape: const RoundedRectangleBorder(),
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _PhoneNotch extends StatelessWidget {
  const _PhoneNotch();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Center(
        child: Container(
          width: 180,
          height: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: const Color(0xFF2E7D32),
          shape: const RoundedRectangleBorder(),
          padding: const EdgeInsets.symmetric(vertical: 18),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}

class _PhoneNotch extends StatelessWidget {
  const _PhoneNotch();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Center(
        child: Container(
          width: 180,
          height: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,
class _DrugCard extends StatelessWidget {
  const _DrugCard({
    required this.title,
    required this.details,
  });

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(details, style: _fieldTextStyle),
        ],
      ),
    );
  }
}

                                  const SizedBox(height: 36),
                                  const Text(
                                    'Notifications to caregiver',
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 58,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  const _NotificationOption('Missed dose'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('Wrong time'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('Refill needed'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('High-risk interaction'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NotificationOption extends StatelessWidget {
  const _NotificationOption(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF8D8D8D), width: 4),
          ),
        ),
        const SizedBox(width: 14),
        Text(label, style: _fieldTextStyle),
      ],
    );
  }
}

                            padding: const EdgeInsets.all(34),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 860,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF8D8D8D),
                                          width: 4,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Video feed',
                                          style: TextStyle(
                                            fontSize: 64,
                                            color: Color(0xFF808080),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 18,
                                      top: 18,
                                      child: Container(
                                        width: 190,
                                        height: 260,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFF8D8D8D),
                                            width: 4,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'You',
                                            style: TextStyle(
                                              fontSize: 50,
                                              color: Color(0xFF353535),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF8D8D8D),
                                      width: 4,
                                    ),
                                  ),
                                  child: const Wrap(
                                    spacing: 26,
                                    children: [
                                      Text('Mute', style: _controlTextStyle),
                                      Text('Camera', style: _controlTextStyle),
                                      Text('Share Rx', style: _controlTextStyle),
                                      Text('End', style: _controlTextStyle),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 170),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PhoneNotch extends StatelessWidget {
  const _PhoneNotch();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Center(
        child: Container(
          width: 180,
          height: 24,
          color: Colors.black,
        ),
      ),
    );
  }
}

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,
const _controlTextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF2F2F2F),
  fontWeight: FontWeight.w500,
);
