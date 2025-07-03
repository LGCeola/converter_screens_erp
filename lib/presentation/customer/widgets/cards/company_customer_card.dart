import 'package:converter_screens_erp/presentation/customer/models/company_customer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CompanyCustomerCard extends ConsumerWidget {
  final CompanyCustomer customer;

  const CompanyCustomerCard ({
    super.key,
    required this.customer
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade200, width: 2)
      ),
      child: InkWell(
        onTap: () {
          context.push('/customer/customer_details', extra: customer.customerId);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: customer.isActive
                  ? Colors.green
                  : Colors.red
                ,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        customer.isActive
                          ? "Ativo"
                          : "Inativo",
                      ),
                    ],
                  ),
                  Container(
                    width: 75,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                      ),
                      color: Colors.grey.shade300,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ),
                      child: Icon(
                        Icons.apartment,
                        size: 36
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              customer.legalName
                            ),
                            Text(
                              customer.cnpj.formatted
                            ),
                            Text(
                              customer.address.city
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.chevron_right, size: 28)
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}