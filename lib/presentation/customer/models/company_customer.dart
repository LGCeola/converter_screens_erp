import 'package:converter_screens_erp/presentation/customer/models/address.dart';
import 'package:converter_screens_erp/presentation/customer/models/cnpj.dart';
import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/email.dart';
import 'package:converter_screens_erp/presentation/customer/models/phone.dart';

class CompanyCustomer extends Customer {
  final String legalName;     // Razão social
  final String tradeName;     // Nome fantasia
  final CNPJ cnpj;


  CompanyCustomer({
    required this.legalName,
    required this.tradeName,
    required this.cnpj,

    required super.customerId,
    required super.email,
    required super.phones,
    required super.address,
    required super.isActive,
    required super.customerCode
  });


  /// Opção para determinar se mostra o nome fantasia ou razão social
  String getDisplayName({bool useTradeName = false}) {
    return useTradeName ? tradeName : legalName;
  }


  CompanyCustomer copyWith({
   String? legalName,
   String? tradeName,
   CNPJ? cnpj,
   Email? email,
   List<Phone>? phones,
   Address? address,
   bool? isActive
  }) {
    return CompanyCustomer(
      customerId: customerId,
      customerCode: customerCode,
      legalName: legalName ?? this.legalName,
      tradeName: tradeName ?? this.tradeName,
      cnpj: cnpj ?? this.cnpj,
      email: email ?? this.email,
      phones: phones ?? this.phones,
      address: address ?? this.address,
      isActive: isActive ?? this.isActive
    );
  }

}