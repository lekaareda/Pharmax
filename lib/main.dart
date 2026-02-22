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
      home: const PrescriptionStatusScreen(),
    );
  }
}

class PrescriptionStatusScreen extends StatelessWidget {
  const PrescriptionStatusScreen({super.key});

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
                  'Prescription Status Review',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                color: primaryGreen,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: const Text(
                  'Prescription status',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
                ),
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rx #12931',
                      style: TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Uploaded: 12 Feb 2026',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      color: const Color(0xFFA9D6A9),
                      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
                      child: const Text(
                        'Under review',
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 42),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pharmacist notes',
                  style: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
                ),
                padding: const EdgeInsets.all(18),
                child: const Text(
                  '- Verify allergy history\n- Confirm dosage',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 34),
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
                    'Approve & create order',
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
