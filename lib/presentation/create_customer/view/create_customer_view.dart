import 'package:converter_screens_erp/presentation/create_customer/viewmodel/create_customer_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateCustomer extends ConsumerWidget {
  final String title;
  
  const CreateCustomer ({
    super.key,
    required this.title
  });
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(createCustomerViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 22),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12, bottom: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 45,
                      child: FilledButton(
                        onPressed: () {
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: viewModelProvider.isSelected
                            ? Color(0xFF0081F5)
                            : Colors.grey.shade300,
                          foregroundColor: viewModelProvider.isSelected
                            ? Colors.white
                            : Colors.black38,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          )
                        ),
                        child: Text(
                          "Pessoa",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 45,
                      child: FilledButton(
                        onPressed: () {
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: viewModelProvider.isSelected
                            ? Color(0xFF0081F5)
                            : Colors.grey.shade300,
                          foregroundColor: viewModelProvider.isSelected
                            ? Colors.white
                            : Colors.black38,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                          )
                        ),
                        child: Text(
                          "Empresa",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ///
              /// Informações dos cards aqui
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
              ///
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0081F5),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    child: Text(
                      "Confirmar",
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}