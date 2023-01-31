import 'package:flutter/material.dart';
// import 'package:untitled7/screens/signup.dart';
// import 'package:flutter/src/rendering/box.dart';
// import 'package:untitled7/screens/loginpage.dart';
// import 'package:untitled7/screens/signup.dart';
import 'package:untitled7/screens/bill.dart';
import '../widgets/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:ui';
import 'dart:math';

import 'loginpage.dart';
class dashboard extends StatelessWidget {
  List<String> events=[
    "My Account",
    "Bill & Payments",
    "My Power Consumption",
    "My Meter Reading",
    "My Complaints",
    "Service Request",
    "Saving Tips",
    "New Service Connection"

  ];
  dashboard({Key? key}) : super(key: key);

  // get builder => ;


  @override
  Widget build(BuildContext context) {

    return Stack(

      children: [
        BackgroundImage(),
        Scaffold(

          resizeToAvoidBottomInset : false,
          backgroundColor: Colors.transparent,
          body: SafeArea(

            child: Column(
              children:<Widget> [
                SizedBox(height: 5,),
                Row(

                  children: [
                    Container(
                      height: 48,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(

                        children: [
                          Padding(padding:EdgeInsets.fromLTRB(0, 0, 10, 50),),

                          Image.asset('assets/11.png',height: 100,width: 150,alignment: Alignment.topLeft,),
                          Padding(padding:EdgeInsets.fromLTRB(0, 10, 10, 50),),

                          Text('UPCL',textAlign: TextAlign.center,style:TextStyle(
                              fontSize: 25,
                              color: Colors.white
                          ),),
                          Padding(padding:EdgeInsets.fromLTRB(90, 10, 10, 60),),
                          Transform.rotate(angle: 90 * pi/180,
                          child:  IconButton(onPressed:(){
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>const signup()));
                          },
                              icon:Icon(
                                Icons.keyboard_control_sharp,size: 30,
                                color: Colors.white,

                              ))
                            )

                          // Icon(
                          //   Icons.check,size: 30,
                          //   color: Colors.white,
                          //
                          //   //Refresh Icon
                          // ),





                        ],

                      ),

                    ),




                  ],

                ),
                // SizedBox(height: 00,),
                Column(
                  children: [
                    Column(
                      children:[
                        Container(
                          margin: const EdgeInsets.only(top: 10.0),
                        child: GridView(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          physics: BouncingScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          children: events.map((title){

                            return GestureDetector(
                              child: getCardByTitle(title),
                              onTap: (){
                                Fluttertoast.showToast(
                                    msg:title + "click",
                                    toastLength:Toast.LENGTH_SHORT,
                                    gravity:ToastGravity.CENTER,
                                    backgroundColor:Colors.black12,
                                    textColor:Colors.white,
                                    fontSize:21.0
                                );
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>bill()));
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                              },);

                          }
                          ).toList(),
                        ),

                      ),
                      ]

                    )
                  ],
                )


              ],

            ),
          ),
        ),
      ],
    );
  }

 Column getCardByTitle  (String title) {
    String img ="";
    if(title == "My Account")
      img="assets/w.png";

    else if(title=="Bill & Payments")
      img="assets/0000.png";
    else if(title=="My Power Consumption")
      img="assets/000.jpg";
    else if(title=="My Meter Reading")
      img="assets/00.png";
    else if(title=="My Complaints")
      img="assets/0.jpg";
    else if(title=="Service Request")
      img="assets/download (1).jpg";
    else if(title == "Saving Tips")
      img ="assets/22.jpg";
    else
        img="assets/i.png";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        new Center(
          child: Container(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  img,
                  width: 100,
                  height: 120,
                )
              ],
            ),
          ),
        ),Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.center,)

      ],
    );


  }
}
