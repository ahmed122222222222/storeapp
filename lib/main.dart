import 'package:appp/screen/home.dart';
import 'package:appp/screen/uda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes:{
        home.id : (context) => home(),
       up.id :(context) => up(),
     } ,
  initialRoute: home.id,
    );

  }
}

