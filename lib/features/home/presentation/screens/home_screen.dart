import 'package:ch_centre/features/home/presentation/widgets/dates_challenge_button.dart';
import 'package:ch_centre/features/home/presentation/widgets/quick_pay_section.dart';
import 'package:ch_centre/features/home/presentation/widgets/toppers_section.dart';
import 'package:ch_centre/features/home/presentation/widgets/total_info_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/home_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            spacing: 15,
            children: [
              const HomeCarousel(),
              TotalInfoWidget(),
              const SizedBox(height: 10),
              const QuickPaySection(),
              const ToppersSection(),
              const DatesChallengeButton()
            ],
          ),
        ),
      ),
    );
  }
}
