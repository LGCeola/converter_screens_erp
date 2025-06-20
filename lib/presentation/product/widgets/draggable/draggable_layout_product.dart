import 'package:converter_screens_erp/presentation/product/viewmodel/product_providers.dart';
import 'package:converter_screens_erp/presentation/product/viewmodel/product_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DraggableLayoutProduct extends ConsumerWidget {

  const DraggableLayoutProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(productViewModelProvider);

    return DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    "Modos de Exibição",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                        leading: Icon(Icons.view_list),
                        title: Text("Lista 1"),
                        onTap: () {
                          viewModel.updateLayout(LayoutProduct.listSmallCard);
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                        leading: Icon(Icons.view_agenda),
                        title: Text("Lista 2"),
                        onTap: () {
                          viewModel.updateLayout(LayoutProduct.listBigCard);
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                        leading: Icon(Icons.grid_view_sharp),
                        title: Text("Grade 1"),
                        onTap: () {
                          viewModel.updateLayout(LayoutProduct.gridColumn2);
                        }
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                        leading: Icon(Icons.grid_on_sharp),
                        title: Text("Grade 2"),
                        onTap: () {
                          viewModel.updateLayout(LayoutProduct.gridColumn3);
                        }
                    ),
                  )
                ]
              ),
            ),
          );
        }
    );
  }
}