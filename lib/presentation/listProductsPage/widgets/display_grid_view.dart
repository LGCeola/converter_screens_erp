/*
import 'package:converter_screens_erp/presentation/listProductsPage/viewmodel/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplayGridView extends ConsumerWidget {
  final String listType;

  const DisplayGridView ({
    super.key,
    required this.listType,

  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(productViewModelProvider);
    // Grid 1 //
    if (listType == "Grade 1") {
      return Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          padding: EdgeInsets.only(left: 8, right: 8),
          children: List.generate(12, (index) {
            return InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.5,
                      builder: (context, scrollController) {
                        return Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 40,
                                          height: 4,
                                          margin: EdgeInsets.only(bottom: 12),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 16)),
                                      SizedBox(
                                        height: 700,
                                        child: ListView.builder(
                                          controller: scrollController,
                                          itemCount: 12,
                                          itemBuilder: (context, i) {
                                            return ListTile(
                                              leading: Icon(Icons.image),
                                              title: Text("Item ${i+1}"),
                                              subtitle: Text("Preço"),
                                            );
                                          }
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                              child: SafeArea(
                                top: false,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              viewModelProvider.decrementProduct();
                                            },
                                            icon: Icon(Icons.remove_circle_outline,
                                              color: Colors.grey.shade700,
                                              size: 28
                                            )
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4, right: 4),
                                            child: Text(
                                              viewModelProvider.productNum.toString(),
                                              style: TextStyle(
                                                  fontSize: 20
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              viewModelProvider.incrementProduct();
                                            },
                                            icon: Icon(Icons.add_circle_outline,
                                              color: Colors.grey.shade700,
                                              size: 28
                                            )
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 48,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFF0081F5),
                                          foregroundColor: Colors.white
                                        ),
                                        child: Text(
                                          "Confirmar",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                          ),
                                        )
                                      ),
                                    )
                                  ],
                                )
                              ),
                            )
                          ],
                        );
                      }
                    );
                  }
                );
              },
              child: Container(
                color: Colors.grey.shade200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 48),
                    SizedBox(height: 8),
                    Text("Preço"),
                    Text("Título"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            viewModelProvider.decrementProduct();
                          },
                          icon: Icon(Icons.remove_circle_outline,
                            color: Colors.grey.shade700,
                            size: 28
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            viewModelProvider.productNum.toString(),
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            viewModelProvider.incrementProduct();
                          },
                          icon: Icon(Icons.add_circle_outline,
                            color: Colors.grey.shade700,
                            size: 28
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
            );
          })
        ),
      );
    }

    // Grid 2 //
    if (listType == "Grade 2") {
      return Expanded(
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          padding: EdgeInsets.only(left: 8, right: 8),
          children: List.generate(12, (index) {
            return InkWell(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.5,
                      builder: (context, scrollController) {
                        return Column(
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                controller: scrollController,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 40,
                                          height: 4,
                                          margin: EdgeInsets.only(bottom: 12),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 16)),
                                      SizedBox(
                                        height: 700,
                                        child: ListView.builder(
                                            controller: scrollController,
                                            itemCount: 12,
                                            itemBuilder: (context, i) {
                                              return ListTile(
                                                leading: Icon(Icons.image),
                                                title: Text("Item ${i+1}"),
                                                subtitle: Text("Preço"),
                                              );
                                            }
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8, right: 8, bottom: 16),
                              child: SafeArea(
                                  top: false,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  viewModelProvider.decrementProduct();
                                                },
                                                icon: Icon(Icons.remove_circle_outline,
                                                    color: Colors.grey.shade700,
                                                    size: 28
                                                )
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: 4, right: 4),
                                              child: Text(
                                                viewModelProvider.productNum.toString(),
                                                style: TextStyle(
                                                    fontSize: 20
                                                ),
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {
                                                  viewModelProvider.incrementProduct();
                                                },
                                                icon: Icon(Icons.add_circle_outline,
                                                    color: Colors.grey.shade700,
                                                    size: 28
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        height: 48,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              context.pop();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Color(0xFF0081F5),
                                                foregroundColor: Colors.white
                                            ),
                                            child: Text(
                                              "Confirmar",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  )
                              ),
                            )
                          ],
                        );
                      }
                    );
                  }
                );
              },
              child: Container(
                color: Colors.grey.shade300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image, size: 36),
                    SizedBox(height: 8),
                    Text("Preço"),
                    Text("Título"),
                  ],
                ),
              ),
            );
          })
        ),
      );
    }
    return Center(
      child: Text(
        "Tipo de lista inválida."
      ),
    );
  }
}
 */