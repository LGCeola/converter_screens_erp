import 'package:converter_screens_erp/presentation/customer/models/company_customer.dart';
import 'package:converter_screens_erp/presentation/customer/models/person_customer.dart';
import 'package:converter_screens_erp/presentation/customer/view/company_customer_details.dart';
import 'package:converter_screens_erp/presentation/customer/view/person_customer_details.dart';
import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerDetails extends ConsumerWidget {
  final String title;
  final int customerId;

  const CustomerDetails ({
    super.key,
    required this.title,
    required this.customerId
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(customerViewModelProvider);
    final customer = viewModelProvider.getCustomerById(customerId);

    if (customer is CompanyCustomer) {
      return CompanyCustomerDetails(customer: customer);
    }

    if (customer is PersonCustomer) {
      return PersonCustomerDetails(customer: customer);
    }

    return Scaffold();
  }
}