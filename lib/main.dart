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
      home: const CaregiverLinkingScreen(),
    );
  }
}

class CaregiverLinkingScreen extends StatelessWidget {
  const CaregiverLinkingScreen({super.key});

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
                      'Caregiver Linking',
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
                              'Caregiver mode',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 56,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(34, 34, 34, 70),
                            child: SizedBox(
                              width: double.infinity,
                              height: 1040,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Link caregiver',
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 58,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 26),
                                  const Text(
                                    'Caregiver phone',
                                    style: _fieldTextStyle,
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    width: double.infinity,
                                    height: 58,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF8D8D8D),
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  SizedBox(
                                    width: double.infinity,
                                    child: FilledButton(
                                      style: FilledButton.styleFrom(
                                        backgroundColor: const Color(0xFF2E7D32),
                                        shape: const RoundedRectangleBorder(),
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 18,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Send invite',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 36),
                                  const Text(
                                    'Notifications to caregiver',
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 58,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 18),
                                  const _NotificationOption('Missed dose'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('Wrong time'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('Refill needed'),
                                  const SizedBox(height: 12),
                                  const _NotificationOption('High-risk interaction'),
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

class _NotificationOption extends StatelessWidget {
  const _NotificationOption(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF8D8D8D), width: 4),
          ),
        ),
        const SizedBox(width: 14),
        Text(label, style: _fieldTextStyle),
      ],
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
