import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move Container on Cursor Proximity',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey containerKey = GlobalKey();
  double containerTop = 200;
  double containerLeft = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Love Later'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: containerTop,
            left: containerLeft,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  containerLeft += details.delta.dx;
                  containerTop += details.delta.dy;
                });
              },
              child: Container(
                key: containerKey,
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Listener(
            onPointerMove: (PointerMoveEvent event) {
              final RenderBox? containerRenderBox =
                  containerKey.currentContext!.findRenderObject() as RenderBox?;
              if (containerRenderBox != null) {
                final containerPosition =
                    containerRenderBox.localToGlobal(Offset.zero);

                final double cursorX = event.position.dx;
                final double cursorY = event.position.dy;

                final double containerX = containerPosition.dx;
                final double containerY = containerPosition.dy;

                final double containerWidth = containerRenderBox.size.width;
                final double containerHeight =
                    containerRenderBox.size.height;

                final double dx = cursorX - containerX - containerWidth / 2;
                final double dy = cursorY - containerY - containerHeight / 2;

                final double distance = sqrt(dx * dx + dy * dy);

                // You can set a threshold distance and perform actions based on it
                final double threshold = 100;

                if (distance < threshold) {
                  // Cursor is near the container
                  setState(() {
                    // Randomly change container position
                    final random = Random();
                    containerLeft = random.nextDouble() *
                        (MediaQuery.of(context).size.width - 100);
                    containerTop = random.nextDouble() *
                        (MediaQuery.of(context).size.height - 100);
                  });
                }
              }
            },
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
