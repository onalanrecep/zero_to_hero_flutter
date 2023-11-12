import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    const baslik = "Card Learn";
    return Scaffold(
      appBar: AppBar(
        title: const Text(baslik),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "http://3.bp.blogspot.com/_jK-4Uq8JP18/SujSAhrqKDI/AAAAAAAAAnE/LKzsR_PB22o/s1600/Hadise+Alb%C3%BCm+Kapak+Resimleri+D%C3%BCm+Tek+Tek.jpg",
                  width: double.infinity,
                  height: 200,
                ),
                const Text(
                  'Düm Tek Tek',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Boktan',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/tr/5/55/Lady_Gaga_-_BDR_kapak.jpg",
                  width: double.infinity,
                  height: 200,
                ),
                const Text(
                  'Fucking',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Shitties',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
