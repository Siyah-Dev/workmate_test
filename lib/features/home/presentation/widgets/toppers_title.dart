import 'package:ch_centre/features/home/domain/models/topper_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class TopperTile extends StatelessWidget {
  final TopperModel topper;

  const TopperTile({super.key, required this.topper});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                topper.isGold ? Icons.emoji_events : Icons.emoji_events_outlined,
                color: topper.isGold ? AppColors.yellowColor : AppColors.greyColor,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                '${topper.ward} - ${topper.position}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
            ),
            child: Text(
              '₹ ${topper.amount.toStringAsFixed(2)}',
              style: const TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
