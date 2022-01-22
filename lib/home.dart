import 'package:flutter/material.dart';
import 'package:puzzle/dataList.dart';
import 'package:puzzle/grid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // var numbers = [0, 1, 2, 32, 4, 5, 6, 8, 9, 10, 11, 12, 132, 14, 15];
  var data = dataModel;
  int zeroIndex = 0;
  int move = 0;
  @override
  void initState() {
    super.initState();
    data.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Puzzle ",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Grid(clickGrid, dataModel),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [moveWidget(), resetWidget()],
            )
          ],
        ),
      ),
    );
  }

  void clickGrid(index) {
    setState(() {
      for (int i = 0; i < data.length; i++) {
        if (data[i].numbers == 0) {
          zeroIndex = i;
        }
      }
      });
      if (index - 1 >= 0 && data[index - 1].numbers == 0 && index % 4 != 0 ||
          index + 1 < 16 && data[index + 1].numbers == 0 && (index + 1) % 4 != 0 ||
          (index - 4 >= 0 && data[index - 4].numbers == 0) ||
          (index + 4 < 16 && data[index + 4].numbers == 0)) {
        setState(() {
          move++;
          var temp = data[index];
          data[index] = data[zeroIndex];
          data[zeroIndex] = temp;
        });
      }

    
  }

  Widget moveWidget() {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(18)),
      child: Center(
        child: Text(
          "Move ${move.toString()}",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  Widget resetWidget() {
    return InkWell(
      onTap: () {
        setState(() {
          data.shuffle();
          move = 0;
        });
      },
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(18)),
        child: Center(
          child: Text(
            "Reset",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
