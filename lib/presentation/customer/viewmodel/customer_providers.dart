import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final customerViewModelProvider = ChangeNotifierProvider((ref) {
  return CustomerViewModel();
});

final customerIndexProvider = StateProvider<int>((ref) => 3);