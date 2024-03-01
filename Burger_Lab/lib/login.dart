


import 'package:burger_lab/Main_page.dart';
import 'package:burger_lab/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {


  var logincontroller=TextEditingController();
  var passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 812,
            width: 375,
          decoration: BoxDecoration(color: Colors.black87,),
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 200,
                    width: 320,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 21,),
                              Text("Login",style: GoogleFonts.cambo(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white)),
                            ],
                          ),


                          Container(
                            height: 41,
                            width: 274,
                            child: TextField(
                              style: TextStyle(color: Colors.white60),
                              decoration: InputDecoration(
                                hintText: "EMAIL ID,Phone NO.",
                                  hintStyle: TextStyle(color: Colors.white30),
                                  contentPadding: EdgeInsets.all(
                                      5
                                  ),

                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(),

                                  )
                              ),
                          controller: logincontroller,
                            ),
                          ),SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(width: 2,),
                              Text("Password",style: GoogleFonts.cambo(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white)),
                              SizedBox(width: 23,),
                              Text("forget Password? ",style: GoogleFonts.cambo(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white)),
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
                          ),])),



                InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));
                }, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),child: Center(child: Text("SIGN IN",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black)))),),
                SizedBox(height: 20,),

                InkWell(onTap: (){}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("asset/image/google.png"),
                    Text("sign up with google",style: GoogleFonts.cambo(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black)),
                  ],
                )),),
                Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Terms and Conditions | Privacy Policy",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.grey.shade700))],),

                Stack(
                  children:[ Image.asset("asset/image/Button Glow.png"),
                    Positioned(left: 15,
                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade300),
                        child: Row(children:[
                          SizedBox(width: 15,),
                          Image.asset("asset/image/Vector.png"),
                             SizedBox(width: 50,),
                             Text("Sign up",style: GoogleFonts.cambo(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white))])),),
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