import 'package:flutter/material.dart';
import 'package:loginapp/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _controller = TextEditingController();
  String email;
  String pass;
  String username;
  final _auth = FirebaseAuth.instance;

  Future<void> _alert() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Hurray!!',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Colors.yellow,
              ),
            ),
            content: Text(
              'New account registered, returning back to home screen',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 20,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
//                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                    return LoginPage();
//                  }));
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }),
                    );
                  },
                  child: Text(
                    'Cool lets go!!',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 15,
                      color: Color(0xff00A6D7),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Welcome!',
//          style: GoogleFonts.portLligatSans(
//            textStyle: Theme.of(context).textTheme.display1,
//            fontSize: 30,
//            fontWeight: FontWeight.w700,
//            color: Color(0xffe46b10),
//          ),
          style: TextStyle(
            fontFamily: 'Comfortaa',
            fontSize: 70,
            color: Colors.white,
          ),
          children: []),
    );
  }

  Widget _email() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (val) {
              email = val;
            },
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey[400],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _username() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Username',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (val) {
              username = val;
            },
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey[400],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pass(String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 20,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            onChanged: (val) {
              pass = val;
            },
            obscureText: true,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey[400],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _registerNowButton(double height) {
    return GestureDetector(
      onTap: () async {
        try {
          final newUser = await _auth.createUserWithEmailAndPassword(
              email: email.trim(), password: pass);
          if (newUser != null) {
            _alert();
          }
        } catch (e) {
          print(e);
        }
      },
      child: Container(
        width: (height / 2.659048),
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(17)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xff86FAF2),
              Color(0xff30E7ED),
              Color(0xff00A6D7),
              Color(0xff0058B3),
              Color(0xff001B87),
            ],
          ),
        ),
        child: Text(
          'Register Now',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontFamily: 'Comfortaa'),
        ),
      ),
    );
  }

  Widget _backButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text('Back',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .1),
                      _title(),
                      SizedBox(height: 50),
                      _username(),
                      _email(),
                      _pass('Password'),
                      SizedBox(height: 20),
                      _registerNowButton(height),
                    ],
                  ),
                ),
              ),
              Positioned(top: 10, left: 0, child: _backButton()),
            ],
          ),
        ),
      ),
    );
  }
}
