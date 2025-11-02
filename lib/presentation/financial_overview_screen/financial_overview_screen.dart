import 'package:flutter/material.dart';

class FinancialOverviewScreen extends StatelessWidget {
  const FinancialOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Financial Overview')),
      body: const Center(child: Text('Financial Overview Screen')),
    );
  }
}
