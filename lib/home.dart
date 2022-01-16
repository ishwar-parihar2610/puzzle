import 'package:flutter/material.dart';
import 'package:puzzle/dataList.dart';
import 'package:puzzle/grid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
  
    super.initState();
      dataModel.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Grid(clickGrid, dataModel),
          ],
        ),
      ),
    );
  }

   clickGrid(index) {
    
    print("hello $index");
  
      dataModel[dataModel.indexOf(dataModel[0])] = dataModel[index];
      dataModel[index] = dataModel[0];
   ;
  }
}
