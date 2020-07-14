import 'package:flutter/material.dart';

class DividerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Divider"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A thin horizontal line, with padding on either side.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "In the material design language, this represents a divider. Dividers can be used in lists, Drawers, and elsewhere to separate content.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "To create a divider between ListTile items, consider using ListTile.divideTiles, which is optimized for this case.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The box's total height is controlled by height. The appropriate padding is automatically computed from the height.",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://flutter.github.io/assets-for-api-docs/assets/material/divider.png",
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
