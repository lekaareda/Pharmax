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
      home: const SymptomCheckScreen(),
    );
  }
}

class SymptomCheckScreen extends StatelessWidget {
  const SymptomCheckScreen({super.key});

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
                            'Symptom Check',
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
                            const Row(
                              children: [
                                _ProgressPill(),
                                SizedBox(width: 18),
                                Text(
                                  'Select symptoms:',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            const Row(
                              children: [
                                Expanded(child: _SymptomOptionTile(label: 'Headache')),
                                SizedBox(width: 24),
                                Expanded(child: _SymptomOptionTile(label: 'Cough')),
                              ],
                            ),
                            const SizedBox(height: 18),
                            const Row(
                              children: [
                                Expanded(child: _SymptomOptionTile(label: 'Fever')),
                                SizedBox(width: 24),
                                Expanded(child: _SymptomOptionTile(label: 'Nausea')),
                              ],
                            ),
                            const SizedBox(height: 450),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30),
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
                                    'Continue',
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
                      const SizedBox(height: 320),
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

class _ProgressPill extends StatelessWidget {
  const _ProgressPill();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF008A00),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          '1/3',
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _SymptomOptionTile extends StatelessWidget {
  const _SymptomOptionTile({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: const Color(0xFFD8ECD8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.w500,
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
