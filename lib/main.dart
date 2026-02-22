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
      home: const ComparePharmaciesScreen(),
    );
  }
}

class ComparePharmaciesScreen extends StatelessWidget {
  const ComparePharmaciesScreen({super.key});

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
                            'Compare Pharmacies',
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
                            Container(
                              width: double.infinity,
                              height: 20,
                              color: const Color(0xFF008A00),
                            ),
                            Container(
                              width: double.infinity,
                              color: const Color(0xFFE8E8E8),
                              padding: const EdgeInsets.fromLTRB(26, 18, 26, 12),
                              child: const Column(
                                children: [
                                  _PharmacyRow(name: 'Al Shorouk', price: '\$10', eta: '45m'),
                                  SizedBox(height: 16),
                                  _PharmacyRow(name: 'Good Health', price: '\$12', eta: '30m'),
                                  SizedBox(height: 16),
                                  _PharmacyRow(name: 'Medico', price: '\$9', eta: '60m'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 36),
                            const Text(
                              'Sort by price, ETA or rating using dropdown',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 34,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 470),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              child: SizedBox(
                                width: double.infinity,
                                child: FilledButton(
                                  style: FilledButton.styleFrom(
                                    backgroundColor: const Color(0xFF008A00),
                                    shape: const RoundedRectangleBorder(),
                                    padding: const EdgeInsets.symmetric(vertical: 18),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Select',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 42,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 270),
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

class _PharmacyRow extends StatelessWidget {
  const _PharmacyRow({
    required this.name,
    required this.price,
    required this.eta,
  });

  final String name;
  final String price;
  final String eta;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              eta,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
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
