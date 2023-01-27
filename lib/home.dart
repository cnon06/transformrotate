import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myTransformTranslate(),
            const SizedBox(
              height: 20,
            ),
            myTransformRotateOffset(),
            const SizedBox(
              height: 20,
            ),
            myTransformScaleY(),
            const SizedBox(
              height: 20,
            ),
            myTransformScaleX(),
            const SizedBox(
              height: 20,
            ),
            myTransformScale(),
            const SizedBox(
              height: 20,
            ),
            myTransformRotate(),
            const SizedBox(
              height: 20,
            ),
            mySlider(),
          ],
        )));
  }

  Transform myTransformTranslate() {
    return Transform.translate(
            offset: Offset(value * 50, -value * 50),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.teal,
            ),
          );
  }

  Transform myTransformScaleY() {
    return Transform.scale(
      scaleY: 1 - value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.purple,
      ),
    );
  }

  Transform myTransformScaleX() {
    return Transform.scale(
      scaleX: value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
    );
  }

  Transform myTransformScale() {
    return Transform.scale(
      scale: 1 - value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.green,
      ),
    );
  }

  Transform myTransformRotateOffset() => Transform.rotate(
        origin: Offset(value * 40, value * 40),
        angle: value * 10,
        child: Container(
          height: 50,
          width: 50,
          color: Colors.cyan,
        ),
      );

  Transform myTransformRotate() => Transform.rotate(
        angle: value * 10,
        child: Container(
          height: 50,
          width: 50,
          color: Colors.amber,
        ),
      );

  Slider mySlider() {
    return Slider(
        value: value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        });
  }
}
