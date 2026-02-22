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
      home: const SystemAdminDashboardScreen(),
    );
  }
}

class SystemAdminDashboardScreen extends StatelessWidget {
  const SystemAdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'System Admin Dashboard',
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
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 56,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(34, 28, 34, 70),
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
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
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
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

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
  fontWeight: FontWeight.w500,
);
