import 'package:flutter/material.dart';

class ProductComboScreen extends StatelessWidget {
  const ProductComboScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Combos')),
      body: const Center(child: Text('Product Combo Screen')),
    );
  }
}
