import 'package:ch_centre/features/home/domain/models/topper_model.dart';

class HomeState {
  final int totalBox;
  final double amount;
  final int selectedQuickPay;
  final List<TopperModel> wardToppers;

  const HomeState({
    required this.totalBox,
    required this.amount,
    required this.selectedQuickPay,
    required this.wardToppers,
  });

  factory HomeState.initial() =>
      const HomeState(totalBox: 6, amount: 7, selectedQuickPay: 1, wardToppers: [
       TopperModel(
        ward: 'Thoombathparamba',
        position: 9,
        amount: 5.00,
        isGold: true,
      ),
       TopperModel(
        ward: 'Valakkulam',
        position: 8,
        amount: 2.00,
        isGold: false,
      ),
    ]);

  HomeState copyWith({int? totalBox, double? amount, int? selectedQuickPay, List<TopperModel>? wardToppers}) {
    return HomeState(
      totalBox: totalBox ?? this.totalBox,
      amount: amount ?? this.amount,
      selectedQuickPay: selectedQuickPay ?? this.selectedQuickPay,
      wardToppers: wardToppers ?? this.wardToppers,
    );
  }
}
