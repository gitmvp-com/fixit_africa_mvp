import 'package:flutter/material.dart';

class GarageManagementScreen extends StatelessWidget {
  const GarageManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Garage Management')),
      body: const Center(child: Text('Garage Management Screen')),
    );
  }
}
