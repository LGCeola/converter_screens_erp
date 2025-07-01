import 'dart:math';
import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/document.dart';
import 'package:converter_screens_erp/presentation/customer/models/email.dart';
import 'package:converter_screens_erp/presentation/customer/models/phone.dart';
import 'package:converter_screens_erp/presentation/customer/widgets/units/document_generator.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/address.dart' as model;

class CustomerViewModel extends ChangeNotifier {
  final List<Customer> customers = createCustomerFaker(2000);
}

String gerarStringAleatoria(int comprimento) {
  const caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final random = Random();
  return List.generate(comprimento, (index) => caracteres[random.nextInt(caracteres.length)]).join();
}

String gerarPhone() {
  final areaCode = faker.randomGenerator.integer(900, min: 100).toString();
  final prefix = faker.randomGenerator.integer(900, min: 100).toString();
  final suffix = faker.randomGenerator.integer(10000, min: 1000).toString().padLeft(4, '0');

  return '($areaCode) $prefix-$suffix';
}

Document gerarDocument() {
  final isCpf = faker.randomGenerator.boolean();
  return isCpf
      ? CPF(generateCpf(formatted: true))
      : CNPJ(generateCnpj(formatted: true));
}

List<Customer> createCustomerFaker(int quantity) {
  final List<Customer> output = List<Customer>.generate(quantity, (index) {
    final faker = Faker();
    final id = index + 1;

    return Customer(
      customerId: id,
      customerName: faker.person.name(),
      email: Email(value: faker.internet.email()),
      phones: [Phone(value: gerarPhone())],
      address: model.Address(
        city: faker.address.city(),
        street: faker.address.streetAddress(),
      ),
      document: gerarDocument(),
      isActive: faker.randomGenerator.boolean()
    );
  });

  return output;
}