import 'package:flutter/material.dart';

class ToolTipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tool Tip"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A material design tooltip."
                  "Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to show a label when the widget long pressed (or when the user takes some other appropriate action).",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Many widgets, such as IconButton, FloatingActionButton, and PopupMenuButton have a tooltip property that, when non-null, causes the widget to include a Tooltip in its build.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Tooltips improve the accessibility of visual widgets by proving a textual representation of the widget, which, for example, can be vocalized by a screen reader.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                Image(
                  image: NetworkImage(
                    "https://miro.medium.com/max/1200/1*0eViXQmkcyHGpjidTIp4jg.gif",
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
