import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var value = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            myTransformTranslate(),
            SizedBox(
              height: 20,
            ),
            myTransformRotateOffset(),
            SizedBox(
              height: 20,
            ),
            myTransformScaleY(),
            SizedBox(
              height: 20,
            ),
            myTransformScaleX(),
            SizedBox(
              height: 20,
            ),
            myTransformScale(),
            SizedBox(
              height: 20,
            ),
            myTransformRotate(),
            SizedBox(
              height: 20,
            ),
            mySlider(),
          ],
        )));
  }

  Transform myTransformTranslate() {
    return Transform.translate(
            offset: Offset(this.value * 50, -this.value * 50),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.teal,
            ),
          );
  }

  Transform myTransformScaleY() {
    return Transform.scale(
      scaleY: 1 - this.value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.purple,
      ),
    );
  }

  Transform myTransformScaleX() {
    return Transform.scale(
      scaleX: this.value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.red,
      ),
    );
  }

  Transform myTransformScale() {
    return Transform.scale(
      scale: 1 - this.value,
      child: Container(
        width: 50,
        height: 50,
        color: Colors.green,
      ),
    );
  }

  Transform myTransformRotateOffset() => Transform.rotate(
        origin: Offset(this.value * 40, this.value * 40),
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
        value: this.value,
        onChanged: (value) {
          setState(() {
            this.value = value;
          });
        });
  }
}
