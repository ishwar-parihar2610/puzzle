import 'package:flutter/material.dart';
import 'package:puzzle/dataList.dart';
import 'package:puzzle/gridButton.dart';

class Grid extends StatelessWidget {
  List<DataModel> numbers = [];

  Function clickGrid;

  Grid(this.clickGrid, this.numbers);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5, crossAxisSpacing: 5, crossAxisCount: 4),
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return numbers[index].numbers != 0
                  ? GridButton(
                      "${numbers[index].numbers}",
                      numbers[index].textColor ?? Colors.white,
                      numbers[index].color ?? Colors.black, () {
                      clickGrid(index);
                    })
                  : SizedBox.shrink();
            }),
      ),
    );
  }
}
