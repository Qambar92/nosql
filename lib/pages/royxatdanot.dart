import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nosql/pages/homepage.dart';
class royxat extends StatefulWidget {
  const royxat({Key? key}) : super(key: key);
  static final id = "royxat";

  @override
  _royxatState createState() => _royxatState();
}

class _royxatState extends State<royxat> {

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final posswordController = TextEditingController();

  void _dologin() async{
    String username = usernameController.text.toString().trim();
    String email = emailController.text.toString().trim();
    String phone = phoneController.text.toString().trim();
    String possword = posswordController.text.toString().trim();
    var box = Hive.box("pdp_online");
    box.put("username", username);
    box.put("email", email);
    box.put("phone", phone);
    box.put("possword", possword);

    String id = box.get("username");
    String em = box.get("email");
    String ph = box.get("phone");
    String pw = box.get("possword");
    print(id);
    print(em);
    print(ph);
    print(pw);

  }
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
                 controller: usernameController,

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
                 controller: emailController,

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
                  controller: phoneController,
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
                 controller: posswordController,
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
                   onPressed: _dologin,
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
