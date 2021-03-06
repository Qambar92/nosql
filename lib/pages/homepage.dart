import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nosql/kirish.dart';
import 'package:nosql/pages/royxatdanot.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  static final id ="homepage";

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  final usernameController = TextEditingController();
  final posswordController = TextEditingController();

  void _dologin() async{
    String username = usernameController.text.toString().trim();
    String possword = posswordController.text.toString().trim();
     var box = Hive.box("pdp_online");
     box.put("username", username);
     box.put("possword", possword);

     String id = box.get("username");
     String pw = box.get("possword");
     print(id);
     print(pw);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body:Center(

        child: Container(
          margin: EdgeInsets.all(20),
          child:  Column(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(

                children: [

                  Container(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,kirish.id);
                        },
                        child: Icon(Icons.arrow_back_sharp,size: 30,color: Colors.white,)
                      )
                  ),
                ],
              ),

              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Image.asset("asset/image/9.jpg",
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,

                  )

              ),
              SizedBox(height: 30,),
              Text("Welcome Back!", style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),
              Text("Sign in to continue", style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 35,),
              TextField(
                controller: usernameController,

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
              SizedBox(height: 25,),
              Text("Forgot Password?", style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              FlatButton(
                height: 80,
                  minWidth: 80,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  color: Colors.blueAccent,
                  onPressed:  _dologin,
                  child:Icon(Icons.arrow_forward_sharp,color: Colors.white,size: 50,) ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?  ", style: TextStyle(color: Colors.white54,fontSize: 18,fontWeight: FontWeight.bold),),
                  Container(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context,royxat.id);
                        },
                        child: Text("SIGN UP",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
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
