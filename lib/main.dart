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
      home: const ProfileSettingsScreen(),
    );
  }
}

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

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
                        padding: const EdgeInsets.symmetric(vertical: 22),
                        child: const Center(
                          child: Text(
                            'Profile & settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 46,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(86, 42, 86, 0),
                        child: _ProfileCard(),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(86, 24, 86, 40),
                        child: Column(
                          children: [
                            _SettingsRow(label: 'Language'),
                            SizedBox(height: 18),
                            _SettingsRow(label: 'Accessibility (Large text)'),
                            SizedBox(height: 18),
                            _SettingsRow(label: 'Privacy'),
                            SizedBox(height: 18),
                            _SettingsRow(label: 'Payment methods'),
                            SizedBox(height: 18),
                            _SettingsRow(label: 'Notifications'),
                            SizedBox(height: 18),
                            _SettingsRow(label: 'Help & support'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 680),
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

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 22),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lekaa Reda',
            style: TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Patient • Verified phone',
            style: TextStyle(
              color: Color(0xFF7F8A95),
              fontSize: 28,
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsRow extends StatelessWidget {
  const _SettingsRow({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
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
