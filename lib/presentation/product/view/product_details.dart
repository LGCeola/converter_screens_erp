import 'package:converter_screens_erp/presentation/product/models/product.dart';
import 'package:converter_screens_erp/presentation/product/viewmodel/product_providers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetails extends ConsumerWidget {
  final String title;
  final Product products;

  const ProductDetails ({
    super.key,
    required this.title,
    required this.products
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = ref.watch(productViewModelProvider);
    final PageController controller = PageController();
    final product = products;
    final image = product.images.firstOrNull;

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
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: 4,
              onPageChanged: (index) {
                viewModelProvider.selectedImage(index);
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  image?.url ?? 'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/not_found.png',
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) =>
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    width: viewModelProvider.currentPage == index
                      ? 12 : 8,
                    height: viewModelProvider.currentPage == index
                      ? 12 : 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: viewModelProvider.currentPage == index
                        ? Colors.blue
                        : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 14, left: 12, right: 12, bottom: 68
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.archive_sharp,
                              color: Colors.black,
                              size: 22,
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Total Vendidos: 4.9mil",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 12),
                    child: Text(
                      "Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição, Descrição",
                      style: TextStyle(color: Colors.grey),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Text(
                      "Leia mais",
                      style: TextStyle(
                        color: Color(0xFF0081F5),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "R\$100,00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough
                            ),
                          ),
                          Text(
                            "R\$55,00",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton.icon(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0081F5),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Icon(Icons.outbox_rounded, size: 22),
                        label: Text(
                          "Adicionar no Pedido",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}