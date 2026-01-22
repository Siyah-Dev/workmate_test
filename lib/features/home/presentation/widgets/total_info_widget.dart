import 'package:ch_centre/core/theme/app_colors.dart';
import 'package:ch_centre/features/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalInfoWidget extends ConsumerWidget {
  const TotalInfoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalBox = ref.watch(homeControllerProvider.select((state) => state.totalBox));
    final amount = ref.watch(homeControllerProvider.select((state) => state.amount));
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const Text('Total Box', style: TextStyle(color: AppColors.lightYellow)),
              Text(
                totalBox.toString(),
                style: const TextStyle(
                  color: AppColors.yellowColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        Positioned(
          bottom: -20,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 62, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.lightYellow,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.primary, width: 2),
            ),
            child: Text(
              'Amount : ₹ $amount',
              style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
