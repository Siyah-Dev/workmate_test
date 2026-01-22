import 'package:ch_centre/core/theme/app_colors.dart';
import 'package:ch_centre/features/order_screen/presentation/controllers/order_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(orderControllerProvider.select((state) => state.orderCount));
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: Column(
              spacing: 10,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(image: AssetImage('assets/images/carousel_img_1.webp')),
                  ),
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text("Item Count"),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.greyColor.withAlpha(150),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        spacing: 8,
                        children: [
                          _ActionButton(ref: ref,isAdd: false,icon: Icons.remove,),
                          Text(count.toString()),
                           _ActionButton(ref: ref,isAdd: true,icon: Icons.add,),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.whiteColor,
                    ),
                    onPressed: () {},
                    child: Text('Confirm Order'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.ref, required this.isAdd, required this.icon});
  final WidgetRef ref;
  final bool isAdd;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ref.read(orderControllerProvider.notifier).updateOrderCount(isAdd),
      child: Icon(icon),
    );
  }
}
