import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});
  final baslik = const Text("Column Row Learn");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: baslik),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                ),
              )
            ],
          ),
        ),
        const Spacer(flex: 2),
        const Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("a"),
              Text("a2"),
              Text("3"),
            ],
          ),
        ),
        const SizedBox(
          height: ProjectContainerSizes.cardHeight,
          child: Column(
            children: [
              Text('data'),
              Text('data'),
              Text('data'),
              Spacer(),
              Text('data'),
            ],
          ),
        ),
      ]),
    );
  }
}

class ProjectContainerSizes {
  static const double cardHeight = 200;
}
