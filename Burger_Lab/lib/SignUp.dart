


import 'package:burger_lab/SignUp.dart';
import 'package:burger_lab/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  var namecontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  var confirmcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 812,
          width: 375,
          decoration: BoxDecoration(color: Colors.black87, ),
          child: Stack(
              children: [
                Positioned(left: 135, child: Image.asset("asset/image/BG Lights effect.png"),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      children: [
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 15,),
                            Image.asset("asset/image/Menu.png"),
                            SizedBox(width: 285,),
                            Image.asset("asset/image/More.png"),
                            SizedBox(width: 15,),
                          ],),
                        Image.asset("asset/image/Line 4.png"),
                      ],
                    ),



                    Container(
                        height: 375,
                        width: 320,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 21,),
                                  Text("Name",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white)),
                                ],
                              ),


                              Container(
                                height: 41,
                                width: 274,
                                child: TextField(
                                  style: TextStyle(color: Colors.white60),
                                  decoration: InputDecoration(
                                      hintText: "name",
                                      hintStyle: TextStyle(color: Colors.white30),
                                      contentPadding: EdgeInsets.all(
                                          5
                                      ),

                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(),

                                      )
                                  ),
                             controller: namecontroller,
                                ),
                              ),SizedBox(height: 20,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20,),
                                  Text("E-mail ID/Phone No.",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white)),
                                  SizedBox(width: 23,),
                                ],
                              ),
                              Container(
                                height: 41,
                                width: 274,
                                child: TextField(
                                  style: TextStyle(color: Colors.white60),
                                  decoration: InputDecoration(
                                      hintText: "E-mail ID",
                                      hintStyle: TextStyle(color: Colors.white30),
                                      contentPadding: EdgeInsets.all(
                                          5
                                      ),

                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(),

                                      )
                                  ),
                              controller: emailcontroller,
                                ),
                              ),SizedBox(height: 20,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 21,),
                                  Text("Password",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white)),
                                ],
                              ),
                      Container(
                        height: 41,
                        width: 274,
                        child: TextField(
                          style: TextStyle(color: Colors.white60),
                          decoration: InputDecoration(
                              hintText: "*********",
                              hintStyle: TextStyle(color: Colors.white30),

                              suffixIcon: (Icon(CupertinoIcons.eye_slash_fill,color: Colors.white30,size: 18,)),


                              contentPadding: EdgeInsets.all(
                                  5
                              ),

                              border: OutlineInputBorder(
                                borderSide: const BorderSide(),

                              )
                          ),
                          controller: passwordcontroller,
                        ),
                      ),SizedBox(height: 20,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 21,),
                                  Text("Confirm Password",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white)),
                                ],
                              ),
                              Container(
                                height: 41,
                                width: 274,
                                child: TextField(
                                  style: TextStyle(color: Colors.white60),
                                  decoration: InputDecoration(
                                      hintText: "*********",
                                      hintStyle: TextStyle(color: Colors.white30),

                                      suffixIcon: (Icon(CupertinoIcons.eye_slash_fill,color: Colors.white30,size: 18,)),


                                      contentPadding: EdgeInsets.all(
                                          5
                                      ),

                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(),

                                      )
                                  ),
                                  controller: confirmcontroller,
                                ),
                              ),])),
                    SizedBox(height: 35,),



                    Stack(
                        children:[ Image.asset("asset/image/Button Glow.png"),
                          Positioned(left: 15,
                            child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade300),
                                child: Row(children:[
                                  SizedBox(width: 15,),
                                  Image.asset("asset/image/Vector.png"),
                                  SizedBox(width: 50,),
                                  Text("Create Account",style: GoogleFonts.cambo(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white))])),),
                          ),]
                    ),
                  ],
                ),]
          ),
        ),
      ),
    );
  }
}