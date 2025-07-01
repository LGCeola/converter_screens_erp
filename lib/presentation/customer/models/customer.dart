import 'package:converter_screens_erp/presentation/customer/models/address.dart';
import 'package:converter_screens_erp/presentation/customer/models/document.dart';
import 'package:converter_screens_erp/presentation/customer/models/email.dart';
import 'package:converter_screens_erp/presentation/customer/models/phone.dart';

enum TypeCustomer {
  person,
  company
}


class Customer {
  final int customerId;
  final String customerName;
  final Email email;
  final List<Phone> phones;
  final Address address;
  final Document document;
  final bool isActive;


  TypeCustomer get type => document is CPF
      ? TypeCustomer.person
      : TypeCustomer.company;

  Customer({
    required this.customerId,
    required this.customerName,
    required this.email,
    required this.phones,
    required this.address,
    required this.document,
    required this.isActive
  }) {

    if (customerId <= 0) {
      throw ArgumentError('Customer: "id" cannot be negative.');
    }
    if (customerName.trim().isEmpty) {
      throw ArgumentError('Customer: "name" is required and cannot be empty.');
    }
  }

}