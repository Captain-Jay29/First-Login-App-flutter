import 'package:flutter/material.dart';

class SelectableTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Selectable Text"),
          backgroundColor: Colors.indigo[900],
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 18),
            child: ListView(
              children: <Widget>[
                Text(
                  "A run of selectable text with a single style.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style's TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size.",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Comfortaa',
                  ),
                ),
                SizedBox(height: 50),
                SelectableText(
                  '𝓟𝓱𝔂𝓼𝓲𝓬𝓼 𝓲𝓼 𝓽𝓱𝓮 𝓸𝓷𝓵𝔂 𝓹𝓻𝓸𝓯𝓮𝓼𝓼𝓲𝓸𝓷 𝓲𝓷 𝔀𝓱𝓲𝓬𝓱 𝓹𝓻𝓸𝓹𝓱𝓮𝓬𝔂 𝓲𝓼 𝓷𝓸𝓽 𝓸𝓷𝓵𝔂 𝓪𝓬𝓬𝓾𝓻𝓪𝓽𝓮 𝓫𝓾𝓽 𝓻𝓸𝓾𝓽𝓲𝓷𝓮.'
                  '        '
                  '~Neil deGrasse Tyson',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontFamily: 'Comfortaa',
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
