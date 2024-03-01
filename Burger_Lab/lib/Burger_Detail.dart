


import 'package:burger_lab/Main_page.dart';
import 'package:burger_lab/SignUp.dart';
import 'package:burger_lab/cart.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class burger extends StatefulWidget {
  var pic;

  var firstpar;
  var secondpar;
  var price=0.0;

  var Image;
 burger(this.pic, this.firstpar, this.secondpar,this.price,this.Image);
  @override
  State<burger> createState() {
    return BurgerDetail(price);
  }
}
class BurgerDetail extends State<burger>{

  var item=1;
  var price=0.0;
  BurgerDetail(this.price);





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
                            SizedBox(width: 225,),
                            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));},child: Image.asset("asset/image/Basket.png")),

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
                       decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.pic),fit: BoxFit.fill)),
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
                                 Text(widget.firstpar,style: GoogleFonts.amita(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),
                               ],
                             ),
                             Row(
                               children: [
                                 SizedBox(width: 20,),
                                 Text(widget.secondpar,style: GoogleFonts.tangerine(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.white)),
                               ],
                             ),
                             SizedBox(height: 275),
                             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 InkWell(onTap:(){print("pressed");
                                 setState(() {
                                   ++item;
                                 });} ,child: Icon(CupertinoIcons.plus_circle_fill,color: Colors.white54,)),
                                 Text("$item",style: GoogleFonts.amita(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),
                                 InkWell(onTap:(){setState(() {
                                   if(item>0){--item;}
                                 });} ,child: Icon(CupertinoIcons.minus_circle_fill,color: Colors.white54,)),
                                 SizedBox(width: 70,),
                                 Text('\$$price',style: GoogleFonts.amita(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white)),
                               ],
                             ),
                             SizedBox(height: 20,),
                             Stack(
                                 children:[ Image.asset("asset/image/Button Glow.png"),
                                   Positioned(left: 15,
                                     child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Main()));
                                       setState(() {
                                          image=Image;
                                          total=total+(price*item);

                                       });}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade300),
                                         child: Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children:[
                                               Image.asset("asset/image/Basket.png"),
                                               SizedBox(width: 20,),
                                               Text("Add to cart",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white))])),),
                                   ),]
                             ),
                           ],
                         ),
                       ))
                     ],
                   ),


                    // Stack(
                    //     children:[ Image.asset("asset/image/Button Glow.png"),
                    //       Positioned(left: 15,
                    //         child: InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));}, child:Container(height:51,width:314,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amber.shade300),
                    //             child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 children:[
                    //                   Image.asset("asset/image/Basket.png"),
                    //               SizedBox(width: 20,),
                    //               Text("Add to cart",style: GoogleFonts.cambo(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white))])),),
                    //       ),]
                    // ),




                  ],
                ),]
          ),
        ),
      ),
    );
  }
}