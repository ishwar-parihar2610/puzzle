import 'package:flutter/material.dart';

class DataModel {
  var numbers;
  Color? color;
  Color? textColor;

  DataModel(this.numbers, this.color, this.textColor);
}

List<DataModel> dataModel = [
  DataModel(0, Colors.yellowAccent, Colors.black),
  DataModel(1, Colors.amber, Colors.black),
  DataModel(2, Colors.white, Colors.black),
  DataModel(3, Colors.blue, Colors.white),
  DataModel(4, Colors.blueGrey, Colors.white),
  DataModel(5, Colors.cyan, Colors.white),
  DataModel(6, Colors.white54, Colors.white),
  DataModel(7, Colors.deepOrange, Colors.white),
  DataModel(8, Colors.deepPurpleAccent, Colors.white),
  DataModel(9, Colors.purpleAccent, Colors.white),
  DataModel(10, Colors.pinkAccent, Colors.white),
  DataModel(11, Colors.pinkAccent, Colors.black),
  DataModel(12, Colors.brown, Colors.white),
  DataModel(13, Colors.lightBlueAccent, Colors.black),
  DataModel(14, Colors.deepPurpleAccent, Colors.white),
   DataModel(15, Colors.indigo, Colors.white)
];
