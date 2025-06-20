import 'package:converter_screens_erp/presentation/auth/viewmodel/login_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginViewModelProvider = ChangeNotifierProvider((ref) {
  return LoginViewModel();
});