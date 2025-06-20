import 'package:converter_screens_erp/presentation/product/viewmodel/product_providers.dart';
import 'package:converter_screens_erp/presentation/product/viewmodel/product_view_model.dart';
import 'package:converter_screens_erp/presentation/product/widgets/draggable/draggable_layout_product.dart';
import 'package:converter_screens_erp/presentation/product/widgets/layouts/grid_view_column_2.dart';
import 'package:converter_screens_erp/presentation/product/widgets/layouts/grid_view_column_3.dart';
import 'package:converter_screens_erp/presentation/product/widgets/layouts/list_view_column_big.dart';
import 'package:converter_screens_erp/presentation/product/widgets/layouts/list_view_column_small.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductView extends ConsumerWidget {
  final String title;

  const ProductView ({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(productIndexProvider);
    final viewModelProvider = ref.watch(productViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.go('/home');
          }, 
          icon: Icon(Icons.arrow_back_ios_new, size: 22)
        ),
        backgroundColor: Color(0xFF0081F5),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 90,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0081F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),  
                      child: Icon(Icons.filter_alt, color: Colors.white, size: 22)
                    ),
                  ),
                  SizedBox(width: 12),
                  SizedBox(
                    width: 90,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => DraggableLayoutProduct()
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0081F5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Icon(Icons.remove_red_eye, color: Colors.white, size: 22)
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: switch(viewModelProvider.layoutProduct) {
                LayoutProduct.listSmallCard => ListViewColumnSmall(products: viewModelProvider.products),
                LayoutProduct.listBigCard => ListViewColumnBig(products: viewModelProvider.products),
                LayoutProduct.gridColumn2 => GridViewColumn2(products: viewModelProvider.products),
                LayoutProduct.gridColumn3 => GridViewColumn3(products: viewModelProvider.products),
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            selectedItemColor: Color(0xFF0081F5),
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            onTap: (index) {
              ref.read(productIndexProvider.notifier).state = 0;
              switch(index) {
                case 0:
                  context.go('/product');
                  break;
                case 1:
                  context.go('/order');
                  break;
                case 2:
                  context.go('/home');
                  break;
                case 3:
                  context.go('/customer');
                  break;
                case 4:
                  context.go('/agenda');
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Color(0xFF0081F5),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle, size: 28),
                  label: "Create Order"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, size: 28),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 28),
                  label: "Customers"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, size: 28),
                  label: "Agenda"
              ),
            ],
          ),
        ),
      ),
    );
  }
}