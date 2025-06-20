/*
import 'package:converter_screens_erp/presentation/listProductsPage/viewmodel/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DialogFilterSelected extends ConsumerWidget {
  DialogFilterSelected({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(productViewModelProvider);

    return AlertDialog(
      title: Text("Escolha um Filtro:"),
      content: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          foregroundColor: Color(0xFF0081F5),
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        child: Text("Opção 1"),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          foregroundColor: Color(0xFF0081F5),
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        child: Text("Opção 2"),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70,
                          foregroundColor: Color(0xFF0081F5),
                          shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                        ),
                        child: Text("Opção 3"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
 */