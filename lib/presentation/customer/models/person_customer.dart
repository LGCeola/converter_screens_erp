import 'package:converter_screens_erp/presentation/customer/models/cpf.dart';
import 'package:converter_screens_erp/presentation/customer/models/customer.dart';

class PersonCustomer extends Customer {
  final String fullName;
  final CPF cpf;

  PersonCustomer({
    required this.fullName,
    required this.cpf,

    required super.customerId,
    required super.email,
    required super.phones,
    required super.address,
    required super.isActive,
    required super.customerCode
  });

}