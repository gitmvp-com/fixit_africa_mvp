import 'package:flutter/material.dart';

class CustomerFeedbackScreen extends StatelessWidget {
  const CustomerFeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customer Feedback')),
      body: const Center(child: Text('Customer Feedback Screen')),
    );
  }
}
