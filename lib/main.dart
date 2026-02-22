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
      home: const AccessibilityScreen(),
    );
  }
}

class AccessibilityScreen extends StatelessWidget {
  const AccessibilityScreen({super.key});
      home: const EmergencyScreen(),
    );
  }
}

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({super.key});
      home: const HealthRecordsScreen(),
    );
  }
}

class HealthRecordsScreen extends StatelessWidget {
  const HealthRecordsScreen({super.key});
      home: const InsuranceScreen(),
    );
  }
}

class InsuranceScreen extends StatelessWidget {
  const InsuranceScreen({super.key});
      home: const ComparePharmaciesScreen(),
    );
  }
}

class ComparePharmaciesScreen extends StatelessWidget {
  const ComparePharmaciesScreen({super.key});
      home: const SymptomCheckScreen(),
    );
  }
}

class SymptomCheckScreen extends StatelessWidget {
  const SymptomCheckScreen({super.key});
      home: const RewardsScreen(),
    );
  }
}

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});
      home: const PaymentCheckoutScreen(),
    );
  }
}

class PaymentCheckoutScreen extends StatelessWidget {
  const PaymentCheckoutScreen({super.key});
      home: const SystemAdminDashboardScreen(),
    );
  }
}

class SystemAdminDashboardScreen extends StatelessWidget {
  const SystemAdminDashboardScreen({super.key});
      home: const PharmacyAdminDashboardScreen(),
    );
  }
}

class PharmacyAdminDashboardScreen extends StatelessWidget {
  const PharmacyAdminDashboardScreen({super.key});
      home: const PharmacistDashboardScreen(),
    );
  }
}

class PharmacistDashboardScreen extends StatelessWidget {
  const PharmacistDashboardScreen({super.key});
      home: const DrugEducationScreen(),
    );
  }
}

class DrugEducationScreen extends StatelessWidget {
  const DrugEducationScreen({super.key});
      home: const NotificationsCenterScreen(),
    );
  }
}

class NotificationsCenterScreen extends StatelessWidget {
  const NotificationsCenterScreen({super.key});
      home: const CaregiverLinkingScreen(),
    );
  }
}

class CaregiverLinkingScreen extends StatelessWidget {
  const CaregiverLinkingScreen({super.key});
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
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: const Center(
                          child: Text(
                            'Accessibility',
                            'Emergency',
                            'Health Records',
                            'Insurance',
                            'Compare Pharmacies',
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
                        padding: EdgeInsets.fromLTRB(20, 14, 20, 0),
                        child: Text(
                          'lekaa reda',
                          style: TextStyle(
                            color: Color(0xFF7F8A95),
                            fontSize: 22,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(90, 54, 90, 40),
                        child: Column(
                          children: [
                            _AccessibilityOptionRow(label: 'Large text'),
                            SizedBox(height: 30),
                            _AccessibilityOptionRow(label: 'Voice reminders'),
                            SizedBox(height: 30),
                            _AccessibilityOptionRow(label: 'One-tap reorder'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 980),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(86, 42, 86, 50),
                        child: Column(
                          children: [
                            const _EmergencyActionTile(label: 'Call ambulance'),
                            const SizedBox(height: 18),
                            const _EmergencyActionTile(label: 'Nearest 24/7 pharmacy'),
                            const SizedBox(height: 18),
                            const _EmergencyActionTile(label: 'Share location'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 990),
                        padding: const EdgeInsets.fromLTRB(86, 28, 86, 50),
                        child: Column(
                          children: [
                            const _RecordsTabs(),
                            const SizedBox(height: 70),
                            SizedBox(
                              width: double.infinity,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF008A00),
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Upload PDF',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 42,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 52),
                            const _RecordTile(label: 'Lab results 20 Feb'),
                            const SizedBox(height: 18),
                            const _RecordTile(label: 'Rx 12 Feb'),
                            const SizedBox(height: 18),
                            const _RecordTile(label: 'BP reading 120/80'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 780),
                            const _InsuranceInfoRow(
                              label: 'Provider',
                              value: 'Axa',
                            ),
                            const SizedBox(height: 18),
                            const _InsuranceInfoRow(
                              label: 'Card #',
                              value: '1234 5678 9012',
                            ),
                            const SizedBox(height: 18),
                            const _InsuranceInfoRow(
                              label: 'Coverage',
                              value: '80%',
                            ),
                            const SizedBox(height: 40),
                            const _UseInsuranceRow(),
                            const SizedBox(height: 18),
                            const _RemainingToPayRow(),
                            const SizedBox(height: 56),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 20,
                              color: const Color(0xFF008A00),
                            ),
                            Container(
                              width: double.infinity,
                              color: const Color(0xFFE8E8E8),
                              padding: const EdgeInsets.fromLTRB(26, 18, 26, 12),
                              child: const Column(
                                children: [
                                  _PharmacyRow(name: 'Al Shorouk', price: '\$10', eta: '45m'),
                                  SizedBox(height: 16),
                                  _PharmacyRow(name: 'Good Health', price: '\$12', eta: '30m'),
                                  SizedBox(height: 16),
                                  _PharmacyRow(name: 'Medico', price: '\$9', eta: '60m'),
                                ],
                              ),
                            ),
                            const SizedBox(height: 36),
                            const Text(
                              'Sort by price, ETA or rating using dropdown',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 34,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 470),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
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
                                    'Verify',
                                    'Select',
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
                      const SizedBox(height: 580),
                      const SizedBox(height: 270),
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

class _ProfileCard extends StatelessWidget {
  const _ProfileCard();
          ),
        ),
      ),
    );
  }
}

class _RecordsTabs extends StatelessWidget {
  const _RecordsTabs();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: const Color(0xFF008A00),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'Labs',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xFFE8E8E8),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'Rx',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color(0xFFE8E8E8),
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'Vitals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 38,
                  fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _InsuranceInfoRow extends StatelessWidget {
  const _InsuranceInfoRow({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xFF7F8A95),
class _PharmacyRow extends StatelessWidget {
  const _PharmacyRow({
    required this.name,
    required this.price,
    required this.eta,
  });

  final String name;
  final String price;
  final String eta;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _UseInsuranceRow extends StatelessWidget {
  const _UseInsuranceRow();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Use insurance',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 120,
            height: 50,
            color: const Color(0xFFEFEFEF),
            padding: const EdgeInsets.all(6),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 50,
                color: const Color(0xFF008A00),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

class _RemainingToPayRow extends StatelessWidget {
  const _RemainingToPayRow();
          Expanded(
            flex: 2,
            child: Text(
              price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              eta,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                            'Rewards',
                            'Payment & Checkout',
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
                        padding: const EdgeInsets.fromLTRB(86, 0, 86, 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const _PointsCard(),
                            const SizedBox(height: 34),
                            const _RewardsProgress(),
                            const SizedBox(height: 32),
                            const _RewardOptionTile(label: '5% off OTC meds'),
                            const SizedBox(height: 18),
                            const _RewardOptionTile(label: 'Free delivery on Rx'),
                            const SizedBox(height: 18),
                            const _RewardOptionTile(label: 'Buy 1 Get 1 Vitamins'),
                            const SizedBox(height: 110),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 70),
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
                                    'Redeem',
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
                      const SizedBox(height: 510),
                        padding: const EdgeInsets.fromLTRB(86, 28, 86, 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const _PaymentOptionTile(label: 'Card'),
                            const SizedBox(height: 18),
                            const _PaymentOptionTile(label: 'Wallet'),
                            const SizedBox(height: 18),
                            const _PaymentOptionTile(label: 'Apple/Google Pay'),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const Expanded(
                                  child: _PromoCodeField(),
                                ),
                                SizedBox(
                                  height: 74,
                                  width: 145,
                                  child: FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: const Color(0xFF008A00),
                                      shape: const RoundedRectangleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Apply',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 44),
                            SizedBox(
                              width: double.infinity,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF008A00),
                                  shape: const RoundedRectangleBorder(),
                                  padding: const EdgeInsets.symmetric(vertical: 18),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Pay Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 44,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 700),
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

class _EmergencyActionTile extends StatelessWidget {
  const _EmergencyActionTile({required this.label});

  final String label;
class _PointsCard extends StatelessWidget {
  const _PointsCard();
      ),
    );
  }
}

class _PaymentOptionTile extends StatelessWidget {
  const _PaymentOptionTile({required this.label});

  final String label;
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'System Admin Dashboard',
                      'Pharmacy Admin Dashboard',
                      'Pharmacist Dashboard',
                      'Drug Education',
                      'Notifications Center',
                      'Caregiver Linking',
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
                              horizontal: 24,
                              vertical: 18,
                            ),
                            child: const Text(
                              'System admin',
                              'Pharmacy admin',
                              'Pharmacist dashboard',
                              'Drug education',
                              'Notifications',
                              'Caregiver mode',
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
                            padding: const EdgeInsets.fromLTRB(34, 28, 34, 70),
                            padding: const EdgeInsets.fromLTRB(34, 34, 34, 70),
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
                                  const _AdminMetricCard(
                                    title: 'Inventory low stock',
                                    value: '7',
                                  ),
                                  const SizedBox(height: 12),
                                  const _AdminMetricCard(
                                    title: 'Active deliveries',
                                    value: '4',
                                  ),
                                  const SizedBox(height: 12),
                                  const _AdminMetricCard(
                                    title: 'Revenue today',
                                    value: 'EGP 12,450',
                                  ),
                                  const SizedBox(height: 250),
                                  _DashboardActionButton(
                                    label: 'Manage inventory',
                                    onPressed: () {},
                                  ),
                                  const SizedBox(height: 14),
                                  _DashboardActionButton(
                                    label: 'Manage pharmacists',
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
          ),
        ),
      ),
    );
  }
}

class _AdminMetricCard extends StatelessWidget {
  const _AdminMetricCard({
                                  const _MetricCard(
                                    title: 'New prescriptions',
                                    value: '12',
                                  ),
                                  const SizedBox(height: 12),
                                  const _MetricCard(
                                    title: 'Pending chats',
                                    value: '5',
                                  ),
                                  const SizedBox(height: 12),
                                  const _MetricCard(
                                    title: 'Orders to verify',
                                    value: '9',
                                  ),
                                  const SizedBox(height: 56),
                                  const Text(
                                    'Today queue',
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 9,
                                    ),
                                children: const [
                                  _NotificationCard(
                                    title: 'Dose reminder',
                                    detail: 'Metformin 500mg • 08:00',
                                    timeLabel: 'Now',
                                  ),
                                  SizedBox(height: 14),
                                  _NotificationCard(
                                    title: 'Missed dose',
                                    detail: 'Atorvastatin • 21:00',
                                    timeLabel: 'Yesterday',
                                  ),
                                  SizedBox(height: 14),
                                  _NotificationCard(
                                    title: 'Refill soon',
                                    detail: 'Metformin remaining 3 days',
                                    timeLabel: '2 days ago',
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

class _NotificationCard extends StatelessWidget {
  const _NotificationCard({
    required this.title,
    required this.detail,
    required this.timeLabel,
  });

  final String title;
  final String detail;
  final String timeLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
          fontSize: 42,
          fontWeight: FontWeight.w700,
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
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Points',
            style: TextStyle(
              color: Colors.black,
              fontSize: 42,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1200',
            style: TextStyle(
              color: Colors.black,
              fontSize: 68,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _RewardsProgress extends StatelessWidget {
  const _RewardsProgress();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 40,
                child: ColoredBox(color: Color(0xFF008A00)),
              ),
            ),
            Expanded(
              flex: 4,
              child: SizedBox(
                height: 40,
                child: ColoredBox(color: Color(0xFFE8E8E8)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  detail,
                  style: _fieldTextStyle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                timeLabel,
                style: const TextStyle(
                  color: Color(0xFF8A8A8A),
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccessibilityOptionRow extends StatelessWidget {
  const _AccessibilityOptionRow({required this.label});

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
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: 24),
        Container(
          width: 52,
          height: 52,
          color: const Color(0xFF008A00),
        ),
      ],
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({required this.letter, required this.label});

  final String letter;
                                children: [
                                  const Text(
                                    'Link caregiver',
                                    style: TextStyle(
                                      color: Color(0xFF1F1F1F),
                                      fontSize: 58,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 14,
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
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rx #12931  •  Review needed',
                                          style: _fieldTextStyle,
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Order #A-5402 •  Substitute approval',
                                          style: _fieldTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 34),
                                    child: const Text(
                                      'Search medicine...',
                                      style: TextStyle(
                                        color: Color(0xFF858585),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  const _DrugCard(
                                    title: 'Amoxicillin',
                                    details: 'Usage • Side effects • Video',
                                  ),
                                  const SizedBox(height: 12),
                                  const _DrugCard(
                                    title: 'Metformin',
                                    details: 'How to take • Warnings',
                                  ),
                                  const SizedBox(height: 34),
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
                                        'Open prescriptions',
                                        'Watch education video',
                                        'Send invite',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
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
      ],
    );
  }
}

class _RecordTile extends StatelessWidget {
  const _RecordTile({required this.label});

  final String label;
class _MetricCard extends StatelessWidget {
  const _MetricCard({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8E8E8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: const Text(
        'Remaining to pay: \$20',
        style: TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({required this.letter, required this.label});

  final String letter;
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      color: const Color(0xFFE8E8E8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 40,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  const _BottomNavItem({required this.letter, required this.label});

  final String letter;
          fontSize: 42,
          fontWeight: FontWeight.w500,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Text(title, style: _fieldTextStyle)),
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
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Next reward at 2000 pts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class _RewardOptionTile extends StatelessWidget {
  const _RewardOptionTile({required this.label});

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
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: const Color(0xFFD8ECD8),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      color: const Color(0xFFE8E8E8),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 35,
          fontWeight: FontWeight.w500,
        ),
      ),
          fontSize: 42,
          fontWeight: FontWeight.w500,
        ),
      ],
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: _fieldTextStyle),
          const SizedBox(height: 2),
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

class _PromoCodeField extends StatelessWidget {
  const _PromoCodeField();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      color: const Color(0xFFE8E8E8),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: const Text(
        'Promo code',
        style: TextStyle(
          color: Color(0xFF7F8A95),
          fontSize: 38,
        ),
      ],
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
      ],
    );
  }
}

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,

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
      ],
    );
  }
}

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,
class _DrugCard extends StatelessWidget {
  const _DrugCard({
    required this.title,
    required this.details,
  });

  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFF8D8D8D),
          width: 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1F1F1F),
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(details, style: _fieldTextStyle),
        ],
      ),
    );
  }
}

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

const _fieldTextStyle = TextStyle(
  color: Color(0xFF2E2E2E),
  fontSize: 24,
const _controlTextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF2F2F2F),
  fontWeight: FontWeight.w500,
);
