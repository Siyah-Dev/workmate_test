class HomeState {
  final int totalBox;
  final double amount;
  final int selectedQuickPay;

  const HomeState({
    required this.totalBox,
    required this.amount,
    required this.selectedQuickPay,
  });

  factory HomeState.initial() => const HomeState(
        totalBox: 6,
        amount: 7,
        selectedQuickPay: 1,
      );

  HomeState copyWith({
    int? totalBox,
    double? amount,
    int? selectedQuickPay,
  }) {
    return HomeState(
      totalBox: totalBox ?? this.totalBox,
      amount: amount ?? this.amount,
      selectedQuickPay: selectedQuickPay ?? this.selectedQuickPay,
    );
  }
}

