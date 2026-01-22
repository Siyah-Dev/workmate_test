import 'package:flutter_riverpod/legacy.dart';
import 'bottom_nav_state.dart';

class BottomNavController extends StateNotifier<BottomNavState> {
  BottomNavController() : super(const BottomNavState());

  void changeIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}

final bottomNavProvider =
    StateNotifierProvider<BottomNavController, BottomNavState>(
  (ref) => BottomNavController(),
);
