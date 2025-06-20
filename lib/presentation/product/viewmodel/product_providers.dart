import 'package:converter_screens_erp/presentation/product/viewmodel/product_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productViewModelProvider = ChangeNotifierProvider.autoDispose((ref) {
  return ProductViewModel();
});

final productIndexProvider = StateProvider<int>((ref) => 0);