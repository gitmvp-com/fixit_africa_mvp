import 'package:flutter/material.dart';

class IdentifyCarPartScreen extends StatelessWidget {
  const IdentifyCarPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Identify Car Part')),
      body: const Center(child: Text('Identify Car Part Screen - Camera/Image Upload')),
    );
  }
}
