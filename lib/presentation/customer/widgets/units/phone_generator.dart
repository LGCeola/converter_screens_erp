import 'package:converter_screens_erp/presentation/customer/models/phone.dart';
import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_view_model.dart';

List<Phone> generatePhoneList({int count = 3}) {
  return List.generate(count, (_) => Phone(value: gerarPhone()));
}
