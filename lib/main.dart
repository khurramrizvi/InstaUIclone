import 'package:flutter/material.dart';
import 'insta_home.dart';
    

void main() { 
  runApp(MyInstaApp());

}

class MyInstaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "Instagram",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black) ,
        accentColor: Colors.black12,
        primaryTextTheme: TextTheme(title: TextStyle(
          color: Colors.black,fontFamily: "Aveny")
          ),
      ),
      home: InstaHome(),
    );
  }
}
