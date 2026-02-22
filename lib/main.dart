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
      home: const TelepharmacyChatScreen(),
    );
  }
}

class TelepharmacyChatScreen extends StatelessWidget {
  const TelepharmacyChatScreen({super.key});

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
                  'Telepharmacy Chat',
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                color: primaryGreen,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                child: const Text(
                  'Chat with pharmacist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: const Text(
                  'Dr. Salma (Online)',
                  style: TextStyle(
                    color: Color(0xFF1F1F1F),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 34),
              const Align(
                alignment: Alignment.centerLeft,
                child: _ChatBubble(
                  text: 'Hello, how can I help?',
                  isUser: false,
                ),
              ),
              const SizedBox(height: 18),
              const Align(
                alignment: Alignment.centerRight,
                child: _ChatBubble(
                  text: 'Is this medicine safe\nwith my condition?',
                  isUser: true,
                ),
              ),
              const SizedBox(height: 18),
              const Align(
                alignment: Alignment.centerLeft,
                child: _ChatBubble(
                  text: 'Please share your Rx and\ncurrent meds.',
                  isUser: false,
                ),
              ),
              const Spacer(),
              const Row(
                children: [
                  Expanded(child: _PrimaryButton(label: 'Voice call')),
                  SizedBox(width: 12),
                  Expanded(child: _PrimaryButton(label: 'Video call')),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFF8F8F8F), width: 3),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: const Text(
                  'Type message...',
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.text, required this.isUser});

  final String text;
  final bool isUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isUser ? 410 : 310,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      color: isUser ? const Color(0xFFA9D6A9) : const Color(0xFFEAEAEA),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF2F2F2F),
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    const primaryGreen = Color(0xFF2E8B3C);

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryGreen,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
      ),
    );
  }
}
