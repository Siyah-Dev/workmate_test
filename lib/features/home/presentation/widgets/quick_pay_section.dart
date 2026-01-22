import 'package:ch_centre/features/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'quick_pay_button.dart';

class QuickPaySection extends ConsumerWidget {
  const QuickPaySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedQuickPay = ref.watch(homeControllerProvider.select((state) =>state.selectedQuickPay,));

    final values =ref.watch(homeControllerProvider.select((state) =>state.quickPayValues,)) ;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/rupee.jpg',
              width: 20,
              height: 20,
            ),
            const Text(
              'Quick Pay',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 30,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: values
                .map(
                  (v) => QuickPayButton(
                    value: v,
                    selected: selectedQuickPay == v,
                    onTap: () =>
                        ref.read(homeControllerProvider.notifier).selectQuickPay(v),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
