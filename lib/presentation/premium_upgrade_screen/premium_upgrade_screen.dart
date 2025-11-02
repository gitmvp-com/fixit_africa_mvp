import 'package:flutter/material.dart';

class PremiumUpgradeScreen extends StatelessWidget {
  const PremiumUpgradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Premium Upgrade')),
      body: const Center(child: Text('Premium Upgrade Screen')),
    );
  }
}
