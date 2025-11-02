import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FixIt Africa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.notificationsScreen);
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.profileScreen);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 24),
            _buildQuickActionsGrid(context),
            const SizedBox(height: 24),
            Text(
              'My Vehicles',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            _buildVehicleCard(context),
            const SizedBox(height: 24),
            Text(
              'Recent Services',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            _buildServiceCard(context),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 1) {
            Navigator.pushNamed(context, AppRoutes.findMechanicsScreen);
          } else if (index == 2) {
            Navigator.pushNamed(context, AppRoutes.partsMarketplaceScreen);
          } else if (index == 3) {
            Navigator.pushNamed(context, AppRoutes.profileScreen);
          }
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Mechanics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Parts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionsGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        _buildActionCard(
          context,
          icon: Icons.build,
          title: 'Find Mechanics',
          onTap: () => Navigator.pushNamed(context, AppRoutes.findMechanicsScreen),
        ),
        _buildActionCard(
          context,
          icon: Icons.shopping_bag,
          title: 'Parts Store',
          onTap: () => Navigator.pushNamed(context, AppRoutes.partsMarketplaceScreen),
        ),
        _buildActionCard(
          context,
          icon: Icons.garage,
          title: 'Garages',
          onTap: () => Navigator.pushNamed(context, AppRoutes.garagesScreen),
        ),
        _buildActionCard(
          context,
          icon: Icons.psychology,
          title: 'AI Assistant',
          onTap: () => Navigator.pushNamed(context, AppRoutes.aiRepairAssistantScreen),
        ),
      ],
    );
  }

  Widget _buildActionCard(BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).colorScheme.outline),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicleCard(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.directions_car, size: 40),
        title: const Text('Toyota Camry'),
        subtitle: const Text('ABC-123-XYZ'),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.myCarsScreen);
          },
        ),
      ),
    );
  }

  Widget _buildServiceCard(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.build_circle, size: 40),
        title: const Text('Oil Change'),
        subtitle: const Text('Completed - 2 days ago'),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.serviceHistoryScreen);
          },
        ),
      ),
    );
  }
}
