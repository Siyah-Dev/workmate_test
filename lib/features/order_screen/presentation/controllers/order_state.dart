
class OrderState {
  final int orderCount;


  const OrderState({
    required this.orderCount,

  });

  factory OrderState.initial() => const OrderState(
    orderCount: 6,

  );

  OrderState copyWith({
    int? orderCount,

  }) {
    return OrderState(
      orderCount: orderCount ?? this.orderCount,
    );
  }
}
