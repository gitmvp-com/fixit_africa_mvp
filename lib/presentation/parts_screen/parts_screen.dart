import 'package:flutter/material.dart';

class PartsScreen extends StatelessWidget {
  const PartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Parts')),
      body: const Center(child: Text('Parts Screen')),
    );
  }
}
