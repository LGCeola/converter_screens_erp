import 'package:converter_screens_erp/presentation/home/viewmodel/home_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeViewModelProvider = ChangeNotifierProvider((ref) {
  return HomeViewModel();
});

final homeIndexProvider = StateProvider<int>((ref) => 2);