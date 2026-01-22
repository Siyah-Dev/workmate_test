import 'package:ch_centre/core/theme/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AppCurvedBottomNav extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;

  const AppCurvedBottomNav({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: index,
      height: 70,
      backgroundColor: Colors.transparent,
      color: AppColors.primary,
      buttonBackgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 300),

    
      items: [
        _navIcon(Icons.home, 0),
        _navIcon(Icons.sync, 1),
        _navIcon(Icons.history, 2),
        _navIcon(Icons.people, 3),
        _navIcon(Icons.receipt_long, 4),
      ],

      onTap: onTap,
    );
  }

  Widget _navIcon(IconData icon, int itemIndex) {
    final isSelected = index == itemIndex;

    return Icon(
      icon,
      size: isSelected ? 30 : 24,
      color: isSelected ? AppColors.primary : Colors.white,
    );
  }
}
