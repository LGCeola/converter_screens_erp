import 'package:converter_screens_erp/presentation/order/viewmodel/order_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final orderViewModelProvider = ChangeNotifierProvider((ref) {
  return OrderViewModel();
});

final orderIndexProvider = StateProvider<int>((ref) => 1);