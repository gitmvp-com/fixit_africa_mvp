import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class WelcomeSignUpScreen extends StatelessWidget {
  const WelcomeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Account Type'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAccountTypeCard(
                context,
                icon: Icons.person,
                title: 'Customer',
                description: 'Find mechanics, book services, and manage your vehicles',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signUpScreen);
                },
              ),
              const SizedBox(height: 20),
              _buildAccountTypeCard(
                context,
                icon: Icons.build,
                title: 'Mechanic',
                description: 'Offer your services and manage bookings',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.mechanicSignupScreen1);
                },
              ),
              const SizedBox(height: 20),
              _buildAccountTypeCard(
                context,
                icon: Icons.store,
                title: 'Garage/Parts Seller',
                description: 'Manage inventory and sell automotive parts',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signUpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountTypeCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ],
        ),
      ),
    );
  }
}
