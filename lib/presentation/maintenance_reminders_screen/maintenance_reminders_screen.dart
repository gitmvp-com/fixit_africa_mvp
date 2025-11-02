import 'package:flutter/material.dart';

class MaintenanceRemindersScreen extends StatelessWidget {
  const MaintenanceRemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Maintenance Reminders')),
      body: const Center(child: Text('Maintenance Reminders Screen')),
    );
  }
}
