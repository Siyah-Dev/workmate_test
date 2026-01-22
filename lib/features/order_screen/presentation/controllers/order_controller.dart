import 'package:ch_centre/features/order_screen/presentation/controllers/order_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class OrderController extends StateNotifier<OrderState> {
  OrderController() : super(OrderState.initial());

  void updateOrderCount(bool isAdd) {
    int count = state.orderCount;

    isAdd ? count++ : count--;
    state = state.copyWith(orderCount: count);
  }
}

final orderControllerProvider = StateNotifierProvider<OrderController, OrderState>(
  (ref) => OrderController(),
);
