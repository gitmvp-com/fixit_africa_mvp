import 'package:flutter/material.dart';

class ReportAnIssueScreen extends StatelessWidget {
  const ReportAnIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Report an Issue')),
      body: const Center(child: Text('Report an Issue Screen')),
    );
  }
}
