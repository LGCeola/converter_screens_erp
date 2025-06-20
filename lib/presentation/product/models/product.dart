import 'package:converter_screens_erp/presentation/product/models/barcode.dart';
import 'package:converter_screens_erp/presentation/product/models/category.dart';
import 'package:converter_screens_erp/presentation/product/models/image.dart';
import 'package:converter_screens_erp/presentation/product/models/packing.dart';
import 'package:converter_screens_erp/presentation/product/models/unit.dart';

class Product {
  final int id;
  final String code;
  final String name;
  final String? description;
  final double price;
  final Barcode? barcode;
  final Unit unit;
  final List<ImageModel> images;
  final List<Category> categories;
  final List<Packing> packings;

  final Map<String, Barcode> _barcodeMap = {};

  Product({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.price,
    this.barcode,
    required this.unit,
    required this.images,
    required this.categories,
    required this.packings
  }) {

    if (id <= 0) {
      throw ArgumentError('Product: "id" cannot be negative.');
    }
    if (code.trim().isEmpty) {
      throw ArgumentError('Product: "code" is required and cannot be empty.');
    }
    if (name.trim().isEmpty) {
      throw ArgumentError('Product: "name" is required and cannot be empty.');
    }
    if (price < 0) {
      throw ArgumentError('Product: "price" cannot be negative.');
    }

    if (barcode != null) {
      _barcodeMap[barcode!.value] = barcode!;
    }

    for (var p in packings) {
      final bc = p.barcode;
      if (bc == null) continue;
      if (_barcodeMap.containsKey(bc.value)) {
        throw ArgumentError('Product: duplicate barcode "${bc.value}" detected.');
      }
      _barcodeMap[bc.value] = bc;
    }
  }

  bool hasBarcode(String code) => _barcodeMap.containsKey(code);

  Barcode? getBarcodeInfo(String code) => _barcodeMap[code];
}





