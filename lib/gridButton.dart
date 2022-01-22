import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  Function clickGrid;
  String text;
  Color textColor;
  Color buttonColor;

  GridButton(this.text, this.textColor, this.buttonColor, this.clickGrid);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.all(buttonColor)),
        onPressed: () {
          clickGrid();
          print(" print ${text}");
        });
  }
}
