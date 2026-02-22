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
      home: const OtcSearchScreen(),
    );
  }
}

class OtcSearchScreen extends StatelessWidget {
  const OtcSearchScreen({super.key});

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
                  'Otc Search',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                color: primaryGreen,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: const Text(
                  'OTC search',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: const Text(
                  'Search OTC medicine...',
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const _OtcItem(
                title: 'Paracetamol 500mg',
                subtitle: 'In stock • from 3 pharmacies',
              ),
              const SizedBox(height: 10),
              const _OtcItem(
                title: 'Cetirizine 10mg',
                subtitle: 'In stock • delivery today',
              ),
              const SizedBox(height: 44),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryGreen,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _OtcItem extends StatelessWidget {
  const _OtcItem({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
