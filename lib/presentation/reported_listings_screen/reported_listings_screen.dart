import 'package:flutter/material.dart';

class ReportedListingsScreen extends StatelessWidget {
  const ReportedListingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reported Listings')),
      body: const Center(child: Text('Reported Listings Screen')),
    );
  }
}
