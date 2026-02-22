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
      home: const PrescriptionUploadScreen(),
    );
  }
}

class PrescriptionUploadScreen extends StatelessWidget {
  const PrescriptionUploadScreen({super.key});

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
                  'Prescription Upload',
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
                    'Upload Prescription',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 56),
              const Text(
                'Upload your prescription image or PDF',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 54),
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryGreen,
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Browse to upload',
                    style: TextStyle(
                      color: Color(0xFF808080),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryGreen,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Upload',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
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
