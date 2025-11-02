import 'package:flutter/material.dart';

class MechanicProfileCreationScreen extends StatelessWidget {
  const MechanicProfileCreationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Mechanic Profile')),
      body: const Center(child: Text('Mechanic Profile Creation Screen')),
    );
  }
}
