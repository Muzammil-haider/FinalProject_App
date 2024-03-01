


import 'package:burger_lab/Main_page.dart';
import 'package:burger_lab/SignUp.dart';
import 'package:burger_lab/cart.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ordered extends StatefulWidget {


  @override
  State<ordered> createState() {
    return OrderedPlaced();
  }
}
class OrderedPlaced extends State<ordered>{







  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          height: 812,
          width: 375,
          decoration: BoxDecoration(color: Colors.black,),
          child: Stack(
              children: [
                Positioned( left: 5,child: Image.asset("asset/image/blow.png",),),
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

                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));},child: Image.asset("asset/image/arrow.png")),
                            SizedBox(width: 220,),
                            InkWell(onTap: (){},child: Image.asset("asset/image/more.png")),


                          ],),
                        Image.asset("asset/image/Line 4.png"),
                      ],
                    ),
                    SizedBox(height: 20,),




                    Stack(
                      children: [Container(
                        height: 600,
                        width: 375,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("asset/image/burgerEnd.jpg"),fit: BoxFit.fill)),
                        // child: Image.asset(pic,height: 500,width: 312,),
                      ),
                        Positioned(child: Container(
                          height: 600,
                          width: 375,
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Row(

                                children: [
                                  SizedBox(width: 20),
                                  Text("'POTATO BUNS'",style: GoogleFonts.amita(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.white)),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Text("Now serving all your favourite burgers in soft-n-fresh potato bun.\n The buns are specially selected to enhance the flavour of each bite whether\n you are eating FireHouse or BigBang, Doppler or Quadra. Each bite into\n softness will make you love us even more!",style: GoogleFonts.tangerine(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white)),
                                ],
                              ),
                              SizedBox(height: 225),
                              Row(

                                children: [
                                  SizedBox(width: 20),
                                  Text("'Enjoy the great taste!'",style: GoogleFonts.amita(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.black)),
                                ],
                              ),
                              SizedBox(height: 25,),

                              Stack(
                                  children:[ Image.asset("asset/image/Button Glow.png"),
                                    Positioned(left: 15,
                                      child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade300),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children:[

                                                Text("Order Placed",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white))])),),
                                    ),]
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),



                  ],
                ),]
          ),
        ),
      ),
    );
  }
}