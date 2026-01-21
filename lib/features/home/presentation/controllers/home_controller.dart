import 'package:ch_centre/features/home/presentation/controllers/home_state.dart';
import 'package:flutter_riverpod/legacy.dart';

class HomeController extends StateNotifier<HomeState> {
  HomeController() : super(HomeState.initial());
}

final homeControllerProvider = StateNotifierProvider<HomeController, HomeState>(
  (ref) => HomeController(),
);
