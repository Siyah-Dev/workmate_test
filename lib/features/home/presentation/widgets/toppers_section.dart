import 'package:ch_centre/core/theme/app_colors.dart';
import 'package:ch_centre/features/home/presentation/controllers/home_controller.dart';
import 'package:ch_centre/features/home/presentation/widgets/toppers_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToppersSection extends ConsumerStatefulWidget {
  const ToppersSection({super.key});

  @override
  ConsumerState<ToppersSection> createState() => _ToppersSectionState();
}

class _ToppersSectionState extends ConsumerState<ToppersSection>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wardToppers =  ref.watch(
      homeControllerProvider.select((topplers) => topplers.wardToppers),
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  AppColors.lightYellow,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text('🏅', style: TextStyle(fontSize: 18)),
              SizedBox(width: 6),
              Text(
                "Today's Toppers",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          TabBar(
            controller: _tabController,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.primary,
            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
            indicatorColor: AppColors.primary,
            indicatorWeight: 2.5,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: const [
              Tab(text: 'Ward'),
              Tab(text: 'Contributors'),
            ],
          ),

          const SizedBox(height: 8),

          SizedBox(
            height: 110,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: wardToppers
                      .map((topper) => TopperTile(topper: topper))
                      .toList(),
                ),

                const Center(
                  child: Text(
                    'No contributors data',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
