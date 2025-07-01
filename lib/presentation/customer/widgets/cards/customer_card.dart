import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerCard extends ConsumerWidget {
  final List<Customer> customers;

  const CustomerCard({
    super.key,
    required this.customers
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        itemCount: customers.length,
        itemBuilder: (context, index) {
          final customer = customers[index];

          return Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200, width: 2)
            ),
            child: InkWell(
              onTap: () {
                context.push('/customer/customer_details', extra: customer);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ),
                      color: Colors.grey.shade300,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ),
                      child: Icon(
                        customer.type == TypeCustomer.person
                          ? Icons.person
                          : Icons.apartment
                        ,
                        size: 36
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
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
                                      customer.customerName
                                  ),
                                  Text(
                                    customer.document.valueFormated,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Text(
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: customer.isActive
                                        ? Colors.green
                                        : Colors.red
                                    ),
                                    customer.isActive
                                      ? "Ativo"
                                      : "Inativo",
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4),
                                    child: Icon(
                                      Icons.circle,
                                      size: 12,
                                      color: customer.isActive
                                        ? Colors.greenAccent
                                        : Colors.redAccent
                                    ),
                                  ),
                                ],
                              ),
                            )
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
      )
    );
  }
}