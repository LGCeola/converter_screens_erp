import 'package:converter_screens_erp/presentation/customer/models/cep.dart';

class Address {
  final String state;
  final String city;
  final String street;
  final CEP cep;

  Address({
    required this.state,
    required this.city,
    required this.street,
    required this.cep
  }) {

    if (state.trim().isEmpty) {
      throw ArgumentError('Address: "state" cannot be empty.');
    }
    if (city.trim().isEmpty) {
      throw ArgumentError('Address: "city" cannot be empty.');
    }
    if (street.trim().isEmpty) {
      throw ArgumentError('Address: "street" cannot be empty.');
    }
    if (cep.value.isEmpty) {
      throw ArgumentError('Address: "cep" cannot be empty.');
    }

  }
}