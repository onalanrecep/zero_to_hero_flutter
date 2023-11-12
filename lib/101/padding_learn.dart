import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    const data = "Reko";
    return Scaffold(
        appBar: AppBar(title: const Text("PaddingLearn")),
        body: Padding(
          padding: ProjectPadding.pagePaddingVertical,
          child: Column(
            children: [
              Padding(
                padding: ProjectPadding.pagePaddingHorizontal,
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: const Center(
                    child: Text(
                      data,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: ProjectPadding.pagePaddingHorizontal +
                    ProjectPadding.pagePaddingVertical,
                child: Container(
                  color: Colors.white,
                  height: 200,
                  child: const Center(
                    child: Text(
                      data,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 50),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 10);
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
