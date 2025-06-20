import 'package:converter_screens_erp/presentation/product/models/barcode.dart';
import 'package:converter_screens_erp/presentation/product/models/unit.dart';

class Packing {
  final int id;
  final Barcode? barcode;
  final Unit unit;
  final double quantity;
  final String? description;


  Packing({
    required this.id,
    this.barcode,
    required this.unit,
    required this.quantity,
    this.description
  }) {

    if (id <= 0) {
      throw ArgumentError('Packing: "id" cannot be negative.');
    }
    if (quantity <= 0) {
      throw ArgumentError('Packing: "quantity" cannot be negative.');
    }
  }
}