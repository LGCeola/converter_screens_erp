import 'package:converter_screens_erp/presentation/customer/models/person_customer.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreatePersonCustomerCard extends ConsumerWidget {
  final PersonCustomer customer;

  const CreatePersonCustomerCard ({
    super.key,
    required this.customer
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(right: 6),
                  child: TextField(
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    decoration: InputDecoration(
                        hintText: "Nome",
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF0081F5),
                                width: 2
                            )
                        )
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  decoration: InputDecoration(
                      hintText: "Sobrenome",
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFF0081F5),
                              width: 2
                          )
                      )
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "CPF",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "Estado",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "Cidade",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "Rua",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "CEP",
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
            child: TextField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              decoration: InputDecoration(
                  hintText: "Telefone",border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF0081F5),
                          width: 2
                      )
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}