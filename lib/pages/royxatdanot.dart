import 'package:flutter/material.dart';
import 'package:nosql/pages/homepage.dart';
class royxat extends StatefulWidget {
  const royxat({Key? key}) : super(key: key);
  static final id = "royxat";

  @override
  _royxatState createState() => _royxatState();
}

class _royxatState extends State<royxat> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.purple[900],
     body: Center(
         child: Container(
           margin: EdgeInsets.all(20),
           child:  Column(


             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(height: 30,),
               Text("Create", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
               SizedBox(height: 5,),
               Text("Account", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
               SizedBox(height: 35,),
               TextField(

                 decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white)
                   ),
                   prefixIcon: Icon(Icons.account_box_sharp,color: Colors.white,),
                   hintStyle: TextStyle(color: Colors.white,fontSize: 20),

                   hintText: "User",

                 ),

               ),
               SizedBox(height: 35,),
               TextField(

                 decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white)
                   ),
                   prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                   hintStyle: TextStyle(color: Colors.white,fontSize: 20),

                   hintText: "Email",

                 ),

               ),
               SizedBox(height: 35,),
               TextField(

                 decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white)
                   ),
                   prefixIcon: Icon(Icons.phone,color: Colors.white,),
                   hintStyle: TextStyle(color: Colors.white,fontSize: 20),

                   hintText: "Phone",

                 ),

               ),
               SizedBox(height: 25,),
               TextField(

                 decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white)
                   ),
                   prefixIcon: Icon(Icons.vpn_key,color: Colors.white,),
                   hintStyle: TextStyle(color: Colors.white,fontSize: 20),

                   hintText: "Password",

                 ),

               ),
               SizedBox(height: 40,),
               FlatButton(
                   height: 80,
                   minWidth: 80,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                   color: Colors.blueAccent,
                   onPressed: (){},
                   child:Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 50,) ),
               SizedBox(height: 50,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account?  ", style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.bold),),
                   Container(
                       child: GestureDetector(
                         onTap: (){
                           Navigator.pushNamed(context,homepage.id);
                         },
                         child: Text("SIGN IN",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                       )
                   ),
                 ],
               )

             ],
           ),
         )
     ),
   );
  }
}
