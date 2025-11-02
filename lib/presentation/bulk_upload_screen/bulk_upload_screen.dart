import 'package:flutter/material.dart';

class BulkUploadScreen extends StatelessWidget {
  const BulkUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bulk Upload')),
      body: const Center(child: Text('Bulk Upload Screen - File Picker Integration')),
    );
  }
}
