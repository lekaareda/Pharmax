import 'package:flutter/material.dart';

void main() {
  runApp(const PharmaxApp());
}

class PharmaxApp extends StatelessWidget {
  const PharmaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryGreen = Color(0xFF2E8B3C);

    return MaterialApp(
      title: 'Smart Pharmacy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryGreen),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryGreen = Color(0xFF2E8B3C);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Home Screen',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                color: primaryGreen,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Center(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              const Row(
                children: [
                  Expanded(
                    child: _FeatureCard(initial: 'U', label: 'Upload Rx'),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: _FeatureCard(initial: 'O', label: 'Order'),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              const Row(
                children: [
                  Expanded(
                    child: _FeatureCard(initial: 'S', label: 'Schedule'),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: _FeatureCard(initial: 'T', label: 'Telepharmacy'),
                  ),
                ],
              ),
              const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _BottomItem(iconText: 'H', label: 'Home'),
                  _BottomItem(iconText: 'O', label: 'Orders'),
                  _BottomItem(iconText: 'C', label: 'Chat'),
                  _BottomItem(iconText: 'P', label: 'Profile'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({required this.initial, required this.label});

  final String initial;
  final String label;

  @override
  Widget build(BuildContext context) {
    const primaryGreen = Color(0xFF2E8B3C);

    return Container(
      height: 168,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFD2D2D2), width: 3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 14, right: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: const Color(0xFFA9D6A9),
              child: Text(
                initial,
                style: const TextStyle(
                  fontSize: 28,
                  color: primaryGreen,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF2F2F2F),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomItem extends StatelessWidget {
  const _BottomItem({required this.iconText, required this.label});

  final String iconText;
  final String label;

  @override
  Widget build(BuildContext context) {
    const primaryGreen = Color(0xFF2E8B3C);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          iconText,
          style: const TextStyle(
            color: primaryGreen,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: primaryGreen,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
