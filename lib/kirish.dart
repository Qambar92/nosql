import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nosql/pages/homepage.dart';
import 'package:nosql/pages/royxatdanot.dart';
class kirish extends StatefulWidget {
  const kirish({Key? key}) : super(key: key);
  static final id ="kirish";

  @override
  _kirishState createState() => _kirishState();
}

class _kirishState extends State<kirish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),

              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context,homepage.id);
                },
                child: Text("1-Sahifa",style: TextStyle(color: Colors.white,fontSize: 30),),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue,
              ),

              child: FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context,royxat.id);
                },
                child: Text("2-Sahifa",style: TextStyle(color: Colors.white,fontSize: 30),),
              ),
            ),
          ],
        ),
      )
    );
  }
}
