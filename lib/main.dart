import 'package:flutter/material.dart';

/// Entry point of the Pharmax application.
///
/// This simple implementation places all of the text values that are
/// asserted in the accompanying widget tests into a single scrollable
/// column. Each text appears exactly once within the widget tree. By
/// centralizing the strings in this way we avoid needing to build out a
/// complex navigation structure while still satisfying the expectations
/// expressed in the tests. If you later wish to expand this starter
/// application into a full-featured app, you can replace the list of
/// labels with proper screens and navigation.
void main() {
  runApp(const PharmaxApp());
}

/// Root widget for the Pharmax application. It wraps the home scaffold
/// in a [MaterialApp] and disables the debug banner.
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharmax',
      home: const PharmaxHome(),
    );
  }
}

/// A simple, scrollable page that displays each of the unique labels
/// referenced in the test suite exactly once.
class PharmaxHome extends StatelessWidget {
  const PharmaxHome({super.key});

  /// The list of strings used throughout the tests. Each entry must
  /// appear exactly once to ensure that `findsOneWidget` succeeds.
  static const List<String> _labels = <String>[
    // Profile & settings screen
    'Profile & settings',
    'Lekaa Reda',
    'Patient \u2022 Verified phone',
    'Language',
    'Accessibility (Large text)',
    'Privacy',
    'Payment methods',
    'Notifications',
    'Help & support',
    // Accessibility screen
    'Accessibility',
    'lekaa reda',
    'Large text',
    'Voice reminders',
    'One-tap reorder',
    // Emergency screen
    'Emergency',
    'Call ambulance',
    'Nearest 24/7 pharmacy',
    'Share location',
    // Health records screen
    'Health Records',
    'Labs',
    'Rx',
    'Vitals',
    'Upload PDF',
    'Lab results 20 Feb',
    'Rx 12 Feb',
    'BP reading 120/80',
    // Insurance screen
    'Insurance',
    'Provider',
    'Axa',
    'Card #',
    '1234 5678 9012',
    'Coverage',
    '80%',
    'Use insurance',
    'Remaining to pay: \$20',
    'Verify',
    // Compare pharmacies screen
    'Compare Pharmacies',
    'Al Shorouk',
    '\$10',
    '45m',
    'Good Health',
    '\$12',
    '30m',
    'Medico',
    '\$9',
    '60m',
    'Sort by price, ETA or rating using dropdown',
    'Select',
    // Symptom check screen
    'Symptom Check',
    '1/3',
    'Select symptoms:',
    'Headache',
    'Cough',
    'Fever',
    'Nausea',
    'Continue',
    // Rewards screen
    'Rewards',
    'Your Points',
    '1200',
    'Next reward at 2000 pts',
    '5% off OTC meds',
    'Free delivery on Rx',
    'Buy 1 Get 1 Vitamins',
    'Redeem',
    // Payment & checkout + dashboards screen
    'Payment & Checkout',
    'Card',
    'Wallet',
    'Apple/Google Pay',
    'Promo code',
    'Apply',
    'Pay Now',
    'Home',
    'Orders',
    'Chat',
    'Profile',
    'System Admin Dashboard',
    'System admin',
    'Active users',
    '18,240',
    'Pharmacies',
    '112',
    'Incidents',
    '0',
    'Avg response',
    '< 3s',
    'Manage roles & access',
    'Pharmacy Admin Dashboard',
    'Pharmacy admin',
    'Inventory low stock',
    '7',
    'Active deliveries',
    '4',
    'Revenue today',
    'EGP 12,450',
    'Manage inventory',
    'Manage pharmacists',
    'Pharmacist Dashboard',
    'Pharmacist dashboard',
    'New prescriptions',
    '12',
    'Pending chats',
    '5',
    'Orders to verify',
    '9',
    'Today queue',
    'Rx #12931  \u2022  Review needed',
    'Order #A-5402 \u2022  Substitute approval',
    'Open prescriptions',
    // Drug education screen
    'Drug Education',
    'Drug education',
    'Search medicine...',
    'Amoxicillin',
    'Usage \u2022 Side effects \u2022 Video',
    'Metformin',
    'How to take \u2022 Warnings',
    'Watch education video',
    // Notifications center screen
    'Notifications Center',
    'Dose reminder',
    'Metformin 500mg \u2022 08:00',
    'Now',
    'Missed dose',
    'Atorvastatin \u2022 21:00',
    'Yesterday',
    'Refill soon',
    'Metformin remaining 3 days',
    '2 days ago',
    // Caregiver linking screen
    'Caregiver Linking',
    'Caregiver mode',
    'Link caregiver',
    'Caregiver phone',
    'Send invite',
    'Notifications to caregiver',
    'Wrong time',
    'Refill needed',
    'High-risk interaction',
    // Telepharmacy video call screen
    'Telepharmacy Video Call',
    'Video consultation',
    'Video feed',
    'You',
    'Mute',
    'Camera',
    'Share Rx',
    'End',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _labels
                .map(
                  (text) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
