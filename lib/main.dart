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
        ),
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
          ),
        ),
      ],
    );
  }
}
