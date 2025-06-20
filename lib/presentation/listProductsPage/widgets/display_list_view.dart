/*
import 'package:converter_screens_erp/presentation/listProductsPage/viewmodel/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DisplayListView extends ConsumerWidget {
  final String listType;

  const DisplayListView ({
    super.key,
    required this.listType
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(productViewModelProvider);
    // List 1 //
    if (listType == "Lista 1") {
      return Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(left: 4, right: 4),
          itemCount: 12,
          itemBuilder: (context, index) {
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
                height: 80,
                margin: EdgeInsets.only(bottom: 8),
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      child: Row(
                        children: [
                          Icon(Icons.image, size: 48),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  children: [
                                    Text("Preço"),
                                    Text("Título"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 60),
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
                        ],
                      )
                    ),
                  ],
                ),
              ),
            );
          }
        )
      );
    }

    // List 2 //
    if (listType == "Lista 2") {
      return Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(left: 4, right: 4),
          itemCount: 12,
          itemBuilder: (context, index) {
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
                height: 160,
                margin: EdgeInsets.only(bottom: 8),
                color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4, right: 4),
                      child: Row(
                        children: [
                          Icon(Icons.image, size: 48),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Column(
                                  children: [
                                    Text("Preço"),
                                    Text("Título"),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 60),
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
                        ],
                      )
                    ),
                  ],
                ),
              ),
            );
          }
        )
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