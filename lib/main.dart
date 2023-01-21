import 'package:flutter/material.dart';
import 'package:untitled4/home.dart';
import 'package:untitled4/home1.dart';
import 'package:untitled4/navigationbar.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(

       home: Bottom(),
     );
   }
 }
