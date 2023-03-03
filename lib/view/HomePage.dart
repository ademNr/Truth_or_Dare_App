import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truth_or_dare/view/add_players_page.dart';

import '../data/players.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration:  BoxDecoration(
                  gradient: LinearGradient(
                      colors: [


                       Colors.white.withOpacity(0.9),
                        Colors.white.withOpacity(0.1)
                      ]
                  )
              ),
            ),

            ListView(

              children: [
                SizedBox(height: 100,),
                GestureDetector(
                  onTap: (){

                    Get.to(()=>AddPlayersPage(), transition: Transition.downToUp, duration: Duration(seconds: 1) ) ;

                  },

                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        height : 180 ,
                        width: 220,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade900,
                                Colors.blueAccent,
                                Colors.lightBlueAccent,
                              ]
                          ),

                        ),
                        child: Container(
                          padding: EdgeInsets.only(left: 30, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,


                            children: [
                              Text("Friends", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 40, shadows:
                              <Shadow>[
                                Shadow(
                                  blurRadius: 10.0,
                                  // color of the shadow
                                  color: Colors.black,
                                  offset: Offset(5, 5),
                                ),
                              ],),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.white,size: 50, shadows:
                                    <Shadow>[
                                      Shadow(
                                        blurRadius: 10.0,
                                        // color of the shadow
                                        color: Colors.black,
                                        offset: Offset(5, 5),
                                      ),
                                    ],),
                                    Icon(Icons.star_border, color: Colors.white,size: 40, shadows:
                                    <Shadow>[
                                      Shadow(
                                        blurRadius: 10.0,
                                        // color of the shadow
                                        color: Colors.black,
                                        offset: Offset(5, 5),
                                      ),
                                    ],),
                                    Icon(Icons.star_border, color: Colors.white,size: 30, shadows:
                                    <Shadow>[
                                      Shadow(
                                        blurRadius: 10.0,
                                        // color of the shadow
                                        color: Colors.black,
                                        offset: Offset(5, 5),
                                      ),
                                    ],),
                                    SizedBox(width: 100,),
                                    Icon(Icons.people, size: 60,color: Colors.white, shadows:
                                    <Shadow>[
                                      Shadow(
                                        blurRadius: 10.0,
                                        // color of the shadow
                                        color: Colors.black,
                                        offset: Offset(5, 5),
                                      ),
                                    ],)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){

                    Get.to(()=>Players(),  ) ;

                  },

                  child: Card(
                    color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      height : 180 ,
                      width: 220,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              Colors.indigo.shade900,
                              Colors.indigo.shade700,
                              Colors.indigoAccent,
                              Colors.indigoAccent.shade200
                            ]
                        ),


                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,


                          children: [
                            Text("Couple outdoor", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 40, shadows:
                            <Shadow>[
                              Shadow(
                                blurRadius: 10.0,
                                // color of the shadow
                                color: Colors.black,
                                offset: Offset(5, 5),
                              ),
                            ],),),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.white,size: 50, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.star, color: Colors.white,size: 40, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.star_border, color: Colors.white,size: 30, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  SizedBox(width: 100,),
                                  Icon(Icons.female, size: 40,color: Colors.white,shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.male, size: 40, color: Colors.white,shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){

                    Get.to(()=>Players(),  ) ;

                  },

                  child: Card(
                    shadowColor: Colors.black,
                      color: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      height : 180 ,
                      width: 220,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [

                              Colors.pink.shade900,
                              Colors.pink.shade800,
                              Colors.pink.shade500,
                              Colors.pink.shade400
                            ]
                        ),


                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 30, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,


                          children: [
                            Text("Couple indoor", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 40,
                              shadows:
                              <Shadow>[
                                Shadow(
                                  blurRadius: 10.0,
                                  // color of the shadow
                                  color: Colors.black,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.white,size: 50, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.star, color: Colors.white,size: 40, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.star, color: Colors.white,size: 30, shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  SizedBox(width: 100,),
                                  Icon(Icons.female, size: 40,color: Colors.white,shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],),
                                  Icon(Icons.male, size: 40, color: Colors.white,shadows:
                                  <Shadow>[
                                    Shadow(
                                      blurRadius: 10.0,
                                      // color of the shadow
                                      color: Colors.black,
                                      offset: Offset(5, 5),
                                    ),
                                  ],)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )

          ],
        )
      ),
    );
  }
}
