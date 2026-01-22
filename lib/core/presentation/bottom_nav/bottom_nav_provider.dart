import 'package:ch_centre/core/enums/bottom_nav_tab.dart';
import 'package:flutter_riverpod/legacy.dart';

final bottomNavProvider =
    StateProvider<BottomNavTab>((ref) {
  return BottomNavTab.home; 
});
