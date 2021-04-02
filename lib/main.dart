import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          DemoImage(1),
          DemoImage(1.4),
          DemoImage(2),
          DemoImage(4),
        ],
      ),
    );
  }
}

class DemoImage extends StatelessWidget {
  final double scale;
  DemoImage(this.scale);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      color: Colors.black,
      child: Image.network(
        "https://storyban.de/static/images/0/16099710106189.jpg",
        width: 80 * scale,
        height: 128 * scale,
        fit: BoxFit.cover,
        isAntiAlias: true, // Seems to have no effect
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
