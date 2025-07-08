import 'package:converter_screens_erp/presentation/create_customer/viewmodel/create_customer_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final createCustomerViewModelProvider = ChangeNotifierProvider.autoDispose((ref) {
  return CreateCustomerViewModel();
});