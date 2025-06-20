import 'dart:math';
import 'package:converter_screens_erp/presentation/product/models/product.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final List<String> localImages = [
  'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/not_found.png',
  'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/yellow_dress.png',
  'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/black_shirt.jpg',
  'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/brown_jacket.jpg',
  'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/jeans_pants.jpg'
];

final random = Random();

class GridViewColumn2 extends ConsumerWidget {
  final List<Product> products;

  const GridViewColumn2({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.8,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        children: List.generate(products.length, (index) {
          final product = products[index];
          final image = product.images.firstOrNull;
          final randomImage = localImages[random.nextInt(localImages.length)];

          return InkWell(
            onTap: () {
              // context.push('/product/selected_product');
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Image.asset(
                    randomImage,
                    /*
                    image == null
                      ? 'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/not_found.png'
                      : image.url
                    ,
                    */
                    fit: BoxFit.contain,
                    height: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, left: 8, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${product.price}"
                      ),
                      Text(
                        product.name,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}