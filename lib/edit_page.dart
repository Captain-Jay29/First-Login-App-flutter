import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_page.dart';

class EditPage extends StatelessWidget {
  String name;
  String age;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blueGrey[100],
                  Colors.blueGrey[300],
                  Colors.blueGrey[700],
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Name :",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          name = val;
                        },
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Comfortaa",
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          hintText: "Enter name ",
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Age :",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Comfortaa",
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (val) {
                          age = val;
                        },
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Comfortaa",
                            fontWeight: FontWeight.w600),
                        decoration: InputDecoration(
                          hintText: "Enter age ",
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(
                                  name: name,
                                  age: age,
                                )));
                  },
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.yellow[100],
                            Colors.white,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: "Comfortaa",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
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
