import 'package:flutter/material.dart';

class VerificationRequestsScreen extends StatelessWidget {
  const VerificationRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verification Requests')),
      body: const Center(child: Text('Verification Requests Screen')),
    );
  }
}
