import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model extends ChangeNotifier{
  String name = 'your name';
  int counter = 0;

  Color redColor = Colors.red;


  get showName => name;
  get showCounter => counter;

  changeName(String name){
    this.name = name;
    notifyListeners();
  }

  increase(){
    counter++;
    notifyListeners();
  }


  decrease(){
    counter--;
    notifyListeners();
  }

   changeColorToBlue(Color color){
     redColor = color;
    notifyListeners();
}

}
