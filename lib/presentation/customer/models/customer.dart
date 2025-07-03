import 'package:converter_screens_erp/presentation/customer/models/address.dart';
import 'package:converter_screens_erp/presentation/customer/models/email.dart';
import 'package:converter_screens_erp/presentation/customer/models/phone.dart';

abstract class Customer {
  final int customerId;
  final String customerCode;
  final Email email;
  final List<Phone> phones;
  final Address address;
  final bool isActive;

  Customer({
    required this.customerId,
    required this.customerCode,
    required this.email,
    required this.phones,
    required this.address,
    required this.isActive
  }) {
    if (customerId <= 0) {
      throw ArgumentError('Customer: "id" cannot be negative.');
    }

    if (customerCode.trim() == "") {
      throw ArgumentError('Customer: "code" cannot be empty.');
    }
  }
}