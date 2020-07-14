import 'package:flutter/material.dart';

class ColorFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color-Filter"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A description of a color filter to apply when drawing a shape or compositing a layer with a particular Paint. A color filter is a function that takes two colors, and outputs one color. When applied during compositing, it is independently applied to each pixel of the layer being drawn before the entire layer is merged with the destination.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Instances of this class are used with Paint.colorFilter on Paint objects.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://miro.medium.com/max/1920/1*aGlX0OUNX_9OXYcpowsmLw.jpeg",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
