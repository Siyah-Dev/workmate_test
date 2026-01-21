import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class QuickPayButton extends StatelessWidget {
  final int value;
  final bool selected;
  final VoidCallback onTap;

  const QuickPayButton({
    super.key,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 2),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:selected? AppColors.primary: AppColors.greyColor, width: 1),
        ),
        child: Text(
          '$value Pkt',
          style: TextStyle(
            color: selected ? AppColors.whiteColor : AppColors.greyColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
