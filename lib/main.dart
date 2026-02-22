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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A6A6)),
        scaffoldBackgroundColor: const Color(0xFFF5F7FA),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _categories = [
    'Pain Relief',
    'Vitamins',
    'Baby Care',
    'Skin Care',
  ];

  static const _popular = [
    _MedicineCardData('Panadol Extra', 'EGP 48.00', Icons.medication_rounded),
    _MedicineCardData('Vitamin C 1000', 'EGP 95.00', Icons.health_and_safety_rounded),
    _MedicineCardData('Nasal Spray', 'EGP 37.50', Icons.vaccines_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pharmax'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _SearchSection(),
          const SizedBox(height: 20),
          const _SectionTitle('Categories'),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: _categories
                .map(
                  (category) => Chip(
                    label: Text(category),
                    avatar: const Icon(Icons.local_pharmacy_outlined, size: 18),
                    side: BorderSide.none,
                  ),
                )
                .toList(),
          ),
          const SizedBox(height: 20),
          const _SectionTitle('Popular Products'),
          const SizedBox(height: 10),
          ..._popular.map((item) => _MedicineCard(data: item)),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_rounded),
            label: const Text('Go to Cart'),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.receipt_long_outlined), label: 'Orders'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}

class _SearchSection extends StatelessWidget {
  const _SearchSection();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Find your medicine quickly',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for medicine, vitamin, or brand',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class _MedicineCard extends StatelessWidget {
  const _MedicineCard({required this.data});

  final _MedicineCardData data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(data.icon),
        ),
        title: Text(data.title),
        subtitle: Text(data.price),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_shopping_cart_rounded),
        ),
      ),
    );
  }
}

class _MedicineCardData {
  const _MedicineCardData(this.title, this.price, this.icon);

  final String title;
  final String price;
  final IconData icon;
}
