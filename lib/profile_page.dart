import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'widgets_page.dart';
import 'edit_page.dart';

final _auth = FirebaseAuth.instance;

FirebaseUser loggedinUser;

class ProfilePage extends StatefulWidget {
  final String name;
  final String age;
  final String Email;
  ProfilePage({this.name, this.age, this.Email});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedinUser = user;
        var email = loggedinUser.email;
        print("email : $email");
        print("Email : ${widget.Email}");
      }
    } catch (e) {
      print(e);
    }
  }

  Widget _widgetButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WidgetPage();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.palette,
                color: Colors.orange,
                size: 28,
              ),
            ),
            Text('Go To Widget gallery',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue))
          ],
        ),
      ),
    );
  }

  Widget _editButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditPage();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.edit,
                color: Colors.orange,
                size: 28,
              ),
            ),
            Text('Edit details',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue))
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: Center(child: Text("DashBoard")),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Card(
              color: Colors.blueGrey[100],
              elevation: 7.0,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        "https://png.pngtree.com/element_our/sm/20180301/sm_5a9797d18f418.jpg",
                      ),
                    ),
                    Text(
                      "Name : ${widget.name}",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Comfortaa",
                      ),
                    ),
                    Text(
                      "Email : ${widget.Email}",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Comfortaa",
                      ),
                    ),
                    Text(
                      "age : ${widget.age}",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Comfortaa",
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    _widgetButton(),
                    _editButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
