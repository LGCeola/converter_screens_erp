import 'package:flutter/cupertino.dart';

class CreateCustomerViewModel extends ChangeNotifier {

  bool isSelected = false;

  void toggleCustomerType() {
    isSelected = !isSelected;
    notifyListeners();
  }

}