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
      home: const TelepharmacyVideoCallScreen(),
    );
  }
}

class TelepharmacyVideoCallScreen extends StatelessWidget {
  const TelepharmacyVideoCallScreen({super.key});

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
                      'Telepharmacy Video Call',
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
                              horizontal: 26,
                              vertical: 18,
                            ),
                            child: const Text(
                              'Video consultation',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 56,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(34),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 860,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF8D8D8D),
                                          width: 4,
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Video feed',
                                          style: TextStyle(
                                            fontSize: 64,
                                            color: Color(0xFF808080),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 18,
                                      top: 18,
                                      child: Container(
                                        width: 190,
                                        height: 260,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFF8D8D8D),
                                            width: 4,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'You',
                                            style: TextStyle(
                                              fontSize: 50,
                                              color: Color(0xFF353535),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 18,
                                    vertical: 16,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF8D8D8D),
                                      width: 4,
                                    ),
                                  ),
                                  child: const Wrap(
                                    spacing: 26,
                                    children: [
                                      Text('Mute', style: _controlTextStyle),
                                      Text('Camera', style: _controlTextStyle),
                                      Text('Share Rx', style: _controlTextStyle),
                                      Text('End', style: _controlTextStyle),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 170),
                              ],
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

const _controlTextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF2F2F2F),
  fontWeight: FontWeight.w500,
);
