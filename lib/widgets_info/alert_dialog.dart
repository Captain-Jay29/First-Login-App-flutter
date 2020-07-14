import 'package:flutter/material.dart';

class AlertDialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alert-Dialog"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A material design alert dialog."
                  "An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "If the content is too large to fit on the screen vertically, the dialog will display the title and the actions and let the content overflow, which is rarely desired. Consider using a scrolling widget for content, such as SingleChildScrollView, to avoid overflow. (However, be aware that since AlertDialog tries to size itself using the intrinsic dimensions of its children, widgets such as ListView, GridView, and CustomScrollView, which use lazy viewports, will not work. If this is a problem, consider using Dialog directly.)",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "For dialogs that offer the user a choice between several options, consider using a SimpleDialog."
                  "Typically passed as the child widget to showDialog, which displays the dialog.",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://miro.medium.com/max/454/1*GWCpeJ4aRz6NvUS-mULcdg.png",
                    scale: 0.5,
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
