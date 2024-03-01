


import 'package:burger_lab/Burger_Detail.dart';
import 'package:burger_lab/SignUp.dart';
import 'package:burger_lab/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    var total=0.0;
    var pic1="asset/image/burger.jpg";
    var pic2="asset/image/burgertwo.jpg";
    var pic3="asset/image/burgerthree.jpg";
    var pic4="asset/image/4.jpg";
    var image1="asset/image/rachoburger.png";
    var image2="asset/image/beef burger.png";
    var secondpar1="Burger with a huge pork cutlet, pickled cucumbers, blue \n onions, grilled vegetables (green beans, bell peppers,\n carrots), oyster dressing, black cuttlefish ink bun. ";
    var firstpar1="Fresh Beef Burger with cheese\n";

    var text1=18.00;
    var text2=16.00;
    var text3=12.00;
    var text4=9.00;
    return Scaffold(
      body: Center(
        child: Container(
          height: 812,
          width: 375,
          decoration: BoxDecoration(color: Colors.black87, ),
          child: Stack(
              children: [
                Positioned( left: 5,child: Image.asset("asset/image/12.png",),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 20,),
                    Column(
                      children: [
                        SizedBox(height: 25,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            InkWell(onTap: (){},child: Image.asset("asset/image/Menu.png")),
                            SizedBox(width: 250,),
                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));},child: Image.asset("asset/image/Basket.png")),

                            InkWell(onTap: (){},child: Image.asset("asset/image/Bell.png")),

                          ],),
                        Image.asset("asset/image/Line 4.png"),
                      ],
                    ),
                    SizedBox(height: 20,),





                            Row(

                              children: [
                                SizedBox(width: 20,),
                                Text("Every Bite a",style: GoogleFonts.amita(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.white)),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Text("Better Burger!",style: GoogleFonts.tangerine(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.white)),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("More->",style: GoogleFonts.amita(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white)),
                                SizedBox(width: 20,),
                              ],
                            ),









                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                   Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                         children: [
                                           InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic1.toString(),firstpar1.toString(),secondpar1.toString(),text1.toDouble(),image1.toString())));},child: Image.asset("asset/image/Product card 1.png",height: 218,width: 185,)),
                                           InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic2.toString(),firstpar1.toString(),secondpar1.toString(),text2.toDouble(),image2.toString())));},child: Image.asset("asset/image/Product card 2.png",height: 218,width: 185,)),

                                                   ],
                                      ),
                                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                           children: [
                                             InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic3.toString(),firstpar1.toString(),secondpar1.toString(),text3.toDouble(),image1.toString())));},child: Image.asset("asset/image/Product card 3.png",height: 218,width: 185,)),
                                             InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic4.toString(),firstpar1.toString(),secondpar1.toString(),text4.toDouble(),image2.toString())));},child: Image.asset("asset/image/Product card 4.png",height: 218,width: 185,)),

                                                     ],
                                      ),
                                      ],
                                  ),
                              Column(
                                children: [
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic1.toString(),firstpar1.toString(),secondpar1.toString(),text1.toDouble(),image1.toString())));},child: Image.asset("asset/image/Product card 1.png",height: 218,width: 185,)),
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic2.toString(),firstpar1.toString(),secondpar1.toString(),text2.toDouble(),image2.toString())));},child: Image.asset("asset/image/Product card 2.png",height: 218,width: 185,)),

                                    ],
                                  ),
                                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic3.toString(),firstpar1.toString(),secondpar1.toString(),text3.toDouble(),image1.toString())));},child: Image.asset("asset/image/Product card 3.png",height: 218,width: 185,)),
                                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>burger(pic4.toString(),firstpar1.toString(),secondpar1.toString(),text4.toDouble(),image2.toString())));},child: Image.asset("asset/image/Product card 4.png",height: 218,width: 185,)),

                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                 ),
                    Container(
                      height: 75,
                      width: 312,
                      decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){},
                            child:Icon(CupertinoIcons.location_solid,color: Colors.white,),
                          ),
                          InkWell(
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));},
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(color: Colors.amber.shade300,borderRadius: BorderRadius.circular(30)),
                              child: Image.asset("asset/image/Basket.png"),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child:Icon(CupertinoIcons.location,color: Colors.white,),
                          )
                        ],
                      ),
                    )




                  ],
                ),]
          ),
        ),
      ),
    );
  }
}