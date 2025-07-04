import 'dart:math';
import 'package:converter_screens_erp/presentation/customer/models/cep.dart';
import 'package:converter_screens_erp/presentation/customer/models/cnpj.dart';
import 'package:converter_screens_erp/presentation/customer/models/company_customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/cpf.dart';
import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/email.dart';
import 'package:converter_screens_erp/presentation/customer/models/person_customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/phone.dart';
import 'package:converter_screens_erp/presentation/customer/widgets/units/document_generator.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/address.dart' as model;

enum CustomerCard {
  customerListCard
}

class CustomerViewModel extends ChangeNotifier {
  final List<Customer> customers = createCustomerFaker(2000);

  bool isEditing = false;
  bool isSelected = true;

  CustomerCard customerCard = CustomerCard.customerListCard;

  Customer? getCustomerById(int customerId) {
    final index = customers.indexWhere((element) => element.customerId == customerId);

    if(index != -1) {
      return customers[index];
    }

    return null;
  }

  void toggleFilter() {
    isSelected = !isSelected;
    notifyListeners();
  }

  void addCustomer(Customer customer) {
    // validações
    // separar
  }

  void updateCustomer(Customer newCustomer){
    final index = customers.indexWhere((element) => element.customerId == newCustomer.customerId);

    if(index != -1) {
      // Troca na entidade

      isEditing = false;
      notifyListeners();
    }
  }

  void activeIsEditing() {
    isEditing = true;
    notifyListeners();
  }
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

List<Customer> createCustomerFaker(int quantity) {
  final List<Customer> output = List<Customer>.generate(quantity, (index) {
    final faker = Faker();
    final id = index + 1;

    if (faker.randomGenerator.boolean()) {
      return PersonCustomer(
        customerId: id,
        customerCode: id.toString().padLeft(6, "0"),
        fullName: faker.person.name(),
        cpf:  CPF(generateCpf(formatted: true)),
        email: Email(value: faker.internet.email()),
        phones: [Phone(value: gerarPhone())],
        address: model.Address(
          state: faker.address.state(),
          city: faker.address.city(),
          street: faker.address.streetAddress(),
          cep: CEP(generateCep(formatted: true)),
        ),
        isActive: faker.randomGenerator.boolean(),
      );
    }

    return CompanyCustomer(
      customerId: id,
      customerCode: id.toString().padLeft(6, "0"),
      tradeName: faker.company.name(),
      legalName: faker.company.name(),
      cnpj: CNPJ(generateCnpj(formatted: true)),
      email: Email(value: faker.internet.email()),
      phones: [Phone(value: gerarPhone())],
      address: model.Address(
        state: faker.address.state(),
        city: faker.address.city(),
        street: faker.address.streetAddress(),
        cep: CEP(generateCep(formatted: true)),
      ),
      isActive: faker.randomGenerator.boolean()
    );
  });

  return output;
}