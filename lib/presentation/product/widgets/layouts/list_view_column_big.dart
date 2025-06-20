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

class ListViewColumnBig extends ConsumerWidget {
  final List<Product> products;

  const ListViewColumnBig ({
    super.key,
    required this.products
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          final image = product.images.firstOrNull;
          final randomImage = localImages[random.nextInt(localImages.length)];

          return InkWell(
            onTap: () {
            //  context.push('/product/selected_product');
            },
            child: Container(
              height: 140,
              margin: EdgeInsets.symmetric(vertical: 4),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    randomImage,
                    /*
                    image == null
                      ? 'C:/Users/New/Documents/AndroidStudioProjects/converter_screens_erp/lib/presentation/assets/images/not_found.png'
                      : image.url
                    ,
                    */
                    fit: BoxFit.contain,
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "${product.price}"
                          ),
                          Text(
                            product.name,
                            style: TextStyle(color: Colors.grey.shade700),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }


}