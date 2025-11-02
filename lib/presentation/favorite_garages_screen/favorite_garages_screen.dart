import 'package:flutter/material.dart';

class FavoriteGaragesScreen extends StatelessWidget {
  const FavoriteGaragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Garages')),
      body: const Center(child: Text('Favorite Garages Screen')),
    );
  }
}
