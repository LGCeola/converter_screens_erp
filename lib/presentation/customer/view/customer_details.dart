import 'package:converter_screens_erp/presentation/customer/models/customer.dart';
import 'package:converter_screens_erp/presentation/customer/viewmodel/customer_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomerDetails extends ConsumerWidget {
  final String title;
  final Customer customers;

  const CustomerDetails ({
    super.key,
    required this.title,
    required this.customers
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final viewModelProvider = ref.watch(customerViewModelProvider);
    final customer = customers;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 22)
        ),
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 64),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    color: customer.isActive
                      ? Colors.greenAccent
                      : Colors.redAccent,
                      width: 2
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    customer.type == TypeCustomer.person
                      ? Icons.person
                      : Icons.apartment
                    ,
                    color: Colors.black,
                    size: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                customer.document.valueFormated,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 16),
              child: Column(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    margin: EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(
                              "DETALHES DO CLIENTE",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Column(
                            children: [
                              Divider(
                                thickness: 1.5,
                                indent: 15,
                                endIndent: 15,
                                color: Colors.grey.shade200,
                              ),
                              ListTile(
                                visualDensity: VisualDensity(vertical: 0.2),
                                title: Text("Nome: "),
                                subtitle: Text(
                                  customer.customerName,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                                trailing: Icon(Icons.edit),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                visualDensity: VisualDensity(vertical: 0.2),
                                title: Text("E-mail: "),
                                subtitle: Text(
                                  customer.email.value,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                                trailing: Icon(Icons.edit),
                                onTap: () {

                                },
                              ),
                              ListTile(
                                title: Text("Telefone: "),
                                subtitle: Text(
                                  customer.phones.first.value,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                                trailing: Icon(Icons.edit),
                                onTap: () {

                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    margin: EdgeInsets.all(2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 12),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Text(
                              "ENDEREÇO",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black38
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          indent: 15,
                          endIndent: 15,
                          color: Colors.grey.shade200,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Column(
                            children: [
                              ListTile(
                                visualDensity: VisualDensity(vertical: 0.2),
                                title: Text("Cidade: "),
                                subtitle: Text(
                                  customer.address.city,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                                trailing: TextButton(
                                  onPressed: () {

                                  },
                                  child: Text(
                                    "Editar",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFF0081F5),
                                      fontSize: 16,
                                      color: Color(0xFF0081F5)
                                    ),
                                  )
                                ),
                              ),
                              ListTile(
                                visualDensity: VisualDensity(vertical: 0.2),
                                title: Text("Rua: "),
                                subtitle: Text(
                                  customer.address.street,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                                trailing: TextButton(
                                  onPressed: () {
                                    
                                  }, 
                                  child: Text(
                                    "Editar",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color(0xFF0081F5),
                                      fontSize: 16,
                                      color: Color(0xFF0081F5)
                                    ),
                                  )
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}