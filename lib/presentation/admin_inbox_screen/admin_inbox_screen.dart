import 'package:flutter/material.dart';

class AdminInboxScreen extends StatelessWidget {
  const AdminInboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Inbox')),
      body: const Center(child: Text('Admin Inbox Screen')),
    );
  }
}
