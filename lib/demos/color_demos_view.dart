//Bir ekran olacak
//Bu ekranda üç buton ve bunlara basınca renk değişecek
//Seçili buton selected icon olsun
import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key});
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  final String _baslik = 'Color Demos';
  late Color? _bacgroundColor = Colors.transparent;
  void changeBackGroundColor(Color color) {
    setState(() {
      _bacgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bacgroundColor,
      appBar: AppBar(title: Text(_baslik)),
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTab, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: 'Blue'),
      ]),
    );
  }

  void _colorOnTab(int value) {
    if (value == _MyColors.red.index) {
      changeBackGroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackGroundColor(Colors.yellow);
    } else {
      changeBackGroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
