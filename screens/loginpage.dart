import 'package:flutter/material.dart';
import 'package:untitled7/screens/signup.dart';
import '../widgets/widgets.dart';
import 'package:untitled7/screens/dashboard.dart';
 // import './screens/signup.dart';
import 'dart:ui';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                          IconButton(onPressed:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> dashboard()));
                          },
                              icon:Icon(
                                Icons.check,size: 30,
                                color: Colors.white,
                              ))




                        ],

                      ),

                    ),




                  ],

                ),
                // SizedBox(height: 00,),
                Column(
                  children: [
                    SingleChildScrollView(

                      child: Column(
                        children: [
                          SizedBox(height: 0,),
                          Image.asset('assets/11.png',height: 250,width: 350,alignment: Alignment.center,),
                          SizedBox(height: 0,),
                          Container(width: 300,
                            child: Text('Mobile Number',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16



                              ),
                            ),


                          ),
                          SizedBox(height: 15,),
                          Container(width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Mobile ',
                                  hintText: 'Enter Mobile No',
                                ),
                                autofocus: false,
                              )

                          ),

                          SizedBox(height: 15,),
                          Container(width: 300,
                            child: Text('Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16



                              ),
                            ),


                          ),
                          SizedBox(height: 15,),
                          Container(width: 300,

                              child: TextField(


                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // labelText: 'Enter Password ',
                                  hintText: 'Enter Password ',
                                  contentPadding: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,

                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.remove_red_eye,
                                      color: Theme.of(context).primaryColorDark,

                                    ),
                                    onPressed: (){},

                                  ),
                                ),
                                autofocus: false,

                              ),

                          ),
                          SizedBox(height: 0,),
                          Container(width: 300,
                            child: Row(
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const signup()));
                                },
                               child: Text('New Meter Reader ? Registered Here',textAlign: TextAlign.center,
                                        style: TextStyle(
                                         color: Colors.white,
                                          fontSize: 16



                                  ),
                               ),)
                              ],
                            ),
                            // child: Text('New Meter Reader ? Registered Here',textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 16
                            //
                            //
                            //
                            //   ),
                            // ),


                          ),
                          // SizedBox(height: 02,),
                          Padding(
                            padding:EdgeInsets.fromLTRB(0, 0, 40, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(onPressed: ()=>{
                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChangeHanset()))
                                  //forget password screen
                                },
                                  child: Text('Change Handset ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      decoration: TextDecoration.underline,
                                    ),),)

                              ],
                            ),
                          ),
                        ],
                      ),
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
}

class ChangeHanset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


