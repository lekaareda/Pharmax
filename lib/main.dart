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
      home: const PrescriptionArchiveScreen(),
    );
  }
}

class PrescriptionArchiveScreen extends StatelessWidget {
  const PrescriptionArchiveScreen({super.key});

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
                  'Prescription Archive',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                color: primaryGreen,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: const Text(
                  'Prescription archive',
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
                  'Search Rx...',
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              const _ArchiveItem(
                rxNumber: 'Rx #12931',
                date: '12 Feb 2026',
                status: 'Reviewed',
                statusColor: Color(0xFF2E8B3C),
              ),
              const SizedBox(height: 10),
              const _ArchiveItem(
                rxNumber: 'Rx #12810',
                date: '03 Feb 2026',
                status: 'Delivered',
                statusColor: Color(0xFF2E8B3C),
              ),
              const SizedBox(height: 10),
              const _ArchiveItem(
                rxNumber: 'Rx #12702',
                date: '20 Jan 2026',
                status: 'Expired',
                statusColor: Color(0xFF8B8B8B),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ArchiveItem extends StatelessWidget {
  const _ArchiveItem({
    required this.rxNumber,
    required this.date,
    required this.status,
    required this.statusColor,
  });

  final String rxNumber;
  final String date;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  rxNumber,
                  style: const TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  date,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Text(
              status,
              style: TextStyle(
                color: statusColor,
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
