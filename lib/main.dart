import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'login_page.dart';
import 'widgets_page.dart';
import 'edit_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
