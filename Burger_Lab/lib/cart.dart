

import 'package:burger_lab/Main_page.dart';
import 'package:burger_lab/SignUp.dart';
import 'package:burger_lab/ordered.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart.dart';

class cart extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
  return cartstate();
  }
}



  var image;
var total=0.0;




class cartstate extends State<cart>{




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
                Positioned( left: 135,child: Image.asset("asset/image/BG Lights effect.png",),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      SizedBox(height: 25,),
                    Column(
                      children: [

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));},child: Image.asset("asset/image/menu.png")),
                            SizedBox(width: 225,),
                            InkWell(onTap: (){},child: Image.asset("asset/image/Basket.png")),

                            InkWell(onTap: (){},child: Image.asset("asset/image/more.png")),

                          ],),
                        Image.asset("asset/image/Line 4.png"),
                      ],
                    ),

                    SingleChildScrollView(child:Column(
                      children: [

                        Image.asset("asset/image/ranchoburger.png",height: 107,width: 332,),
                        Image.asset("asset/image/Line 4.png"),
                        Image.asset("asset/image/beef burger.png",height: 107,width: 332,),
                        Image.asset("asset/image/Line 4.png"),


                      ],
                    ),

                    ),

                    Container(
                      height: 250,
                      width: 273,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery charges",style: GoogleFonts.amita(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white)),
                              Text("0.0",style: GoogleFonts.amita(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white))

                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("Total",style: GoogleFonts.amita(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white)),
                              Text("\$$total",style: GoogleFonts.amita(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white)),

                          ],),
                          Image.asset("asset/image/Line 4.png"),
                          SizedBox(height: 100,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(onTap: (){},child:Image.asset("asset/image/googleshade.png",height: 46,width: 51,),),
                              SizedBox(width: 100,),
                              InkWell(onTap: (){},child:Image.asset("asset/image/paytm.png",height: 35,width: 110,)),

                            ],
                          ),
                        ],
                      ),
                    ),

                    Stack(
                        children:[ Image.asset("asset/image/Button Glow2.png",),

                          Positioned(left: 15,height: 82,
                            child: InkWell(onTap: (){if(total>0){Navigator.push(context, MaterialPageRoute(builder: (context)=>ordered()));}
                            else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));

                            }
    },


                                 child: Image.asset("asset/image/Button1.png",height: 82,width: 315,),

                                  )),
                          ]
                    ),









                  ],
                ),]
          ),
        ),
      ),
    );
  }
}