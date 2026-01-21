import 'package:ch_centre/features/home/presentation/controllers/home_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class HomeController extends StateNotifier<HomeState> {
  HomeController() : super(HomeState.initial());

  void selectQuickPay(int value) {
    state = state.copyWith(
      selectedQuickPay: value,
      totalBox: value,
      amount: value.toDouble(),
    );
  }
}

final homeControllerProvider = StateNotifierProvider<HomeController, HomeState>(
  (ref) => HomeController(),
);
