import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sized Box"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A box with a specified size.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "If given a child, this widget forces its child to have a specific width and/or height (assuming values are permitted by this widget's parent). If either the width or height is null, this widget will try to size itself to match the child's size in that dimension. If the child's size depends on the size of its parent, the height and width must be provided.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "If not given a child, SizedBox will try to size itself as close to the specified height and width as possible given the parent's constraints. If height or width is null or unspecified, it will be treated as zero.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The new SizedBox.expand constructor can be used to make a SizedBox that sizes itself to fit the parent. It is equivalent to setting width and height to double.infinity.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://flutter-examples.com/wp-content/uploads/2019/09/SizedBox_flutter_thumb.png",
                    scale: 0.4,
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
