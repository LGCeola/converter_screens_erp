import 'dart:math';
import 'package:converter_screens_erp/presentation/product/models/product.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GridViewColumn3 extends ConsumerWidget {
  final List<Product> products;

  const GridViewColumn3({
    super.key,
    required this.products
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.7,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        children: List.generate(products.length, (index) {
          final product = products[index];
          final image = product.images.firstOrNull;

          return Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.grey.shade400, width: 2)
            ),
            child: InkWell(
              onTap: () {
                context.push(
                  '/product/product_details',
                   extra: product
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)
                          ),
                          color: Colors.grey.shade300,
                        ),
                        child: Image.asset(
                          image?.url ?? 'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/not_found.png',
                          width: 120,
                          height: 120,
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, left: 8, bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${product.price}",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis
                            ),
                          ),
                          Text(
                            product.name,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              overflow: TextOverflow.ellipsis
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

}