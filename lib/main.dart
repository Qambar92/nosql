import 'package:flutter/material.dart';
import 'package:nosql/pages/homepage.dart';
import 'package:nosql/pages/royxatdanot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: royxat(),
      routes:{
        homepage.id:(context)=> homepage(),
        royxat.id:(context)=>royxat(),

      }

    );

  }
}
