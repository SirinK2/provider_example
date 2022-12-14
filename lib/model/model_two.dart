import 'package:flutter/cupertino.dart';

class ModelTwo extends ChangeNotifier{
  String colorText = 'red';

  changeColorText(String text){
    colorText = text;
    notifyListeners();
  }
}