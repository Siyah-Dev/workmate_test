import 'package:ch_centre/core/enums/bottom_nav_tab.dart';
import 'package:ch_centre/core/presentation/bottom_nav/bottom_nav.dart';
import 'package:ch_centre/core/presentation/bottom_nav/bottom_nav_provider.dart';
import 'package:ch_centre/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavScreen extends ConsumerWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = ref.watch(bottomNavProvider);

    return Scaffold(
      body: _buildBody(selectedTab),
      bottomNavigationBar: AppCurvedBottomNav(
        index: BottomNavTab.values.indexOf(selectedTab),
        onTap: (index) {
          ref.read(bottomNavProvider.notifier).state =
              BottomNavTab.values[index];
        },
      ),
    );
  }

  Widget _buildBody(BottomNavTab tab) {
    switch (tab) {
      case BottomNavTab.home:
        return const HomeScreen();
      case BottomNavTab.transactions:
        return const Center(child: Text('Transactions'));
      case BottomNavTab.history:
        return const Center(child: Text('My History'));
      case BottomNavTab.sponsors:
        return const Center(child: Text('Top Sponsors'));
      case BottomNavTab.reports:
        return const Center(child: Text('Top Report'));
    }
  }
}
