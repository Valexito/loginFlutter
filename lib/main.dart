import 'package:flutter/material.dart';
import 'package:login_screen/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build (BuildContext context){
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  );
}

}
//borderline