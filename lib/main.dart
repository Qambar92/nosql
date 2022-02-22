import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:nosql/kirish.dart';
import 'package:nosql/pages/homepage.dart';
import 'package:nosql/pages/royxatdanot.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox("pdp_online");
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
      home: kirish(),
      routes:{
        kirish.id:(context)=>kirish(),
        homepage.id:(context)=> homepage(),
        royxat.id:(context)=>royxat(),

      }

    );

  }
}
