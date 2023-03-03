
import 'dart:async';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truth_or_dare/data/players.dart';
import 'package:truth_or_dare/view/add_players_page.dart';
import 'package:truth_or_dare/view/truth_or_dare_page.dart';

class Wheel extends StatefulWidget {
  const Wheel({Key? key}) : super(key: key);

  @override
  State<Wheel> createState() => _WheelState();
}

class _WheelState extends State<Wheel> {
  Players _players = Get.put(Players());
  StreamController<int> selected = StreamController<int>();
  var name ;
  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.7),
        onPressed: (){
          Get.to(()=>TruthOrDare(), arguments: name, transition: Transition.circularReveal, duration: Duration(seconds: 2));
        },
        child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.white,size: 30,),
      ),
      body: Stack(
        children:[

          Container(
            decoration:  BoxDecoration(
                gradient: LinearGradient(
                    colors: [

                      Colors.blue.shade800,
                      Colors.blueAccent,
                      Colors.lightBlueAccent,
                    ]
                )
            ),
          ),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(left: 100, top :40),
                  child: Text("Wheel", style: TextStyle(color: Colors.white.withOpacity(0.6), fontWeight: FontWeight.w900, fontSize: 60, letterSpacing: 2),)),
              Container(
                padding: EdgeInsets.only(bottom: 20, left: 100),
                  child: Image.asset("lib/assets/press.png", color: Colors.white,))
            ],
          ), 
          SafeArea(
          child: Center(
            child: GestureDetector(
                onTap: (){
                  setState(() {
                    selected.add(
                      Fortune.randomInt(0, _players.players.length),
                    );
                    name = name ;
                  });
                },
              child: Container(
                padding: EdgeInsets.all(10),
                child: FortuneWheel(
                  styleStrategy: UniformStyleStrategy(
                    borderWidth: 2,
                    borderColor: Colors.white,
                    color: Colors.black.withOpacity(0.7)

                  ),
                       curve: FortuneCurve.spin,
                  animateFirst: false,
                  physics: CircularPanPhysics(
                    duration: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                  ),

                  selected: selected.stream,
                  items: [
                    for ( name in _players.players) FortuneItem(child: Text(name, style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(bottom: 15, left: 15),
            alignment: AlignmentDirectional.bottomStart,
            child: FloatingActionButton(
                backgroundColor: Colors.black.withOpacity(0.7),
                onPressed: (){
                  Get.to(()=>AddPlayersPage(), arguments: name, transition: Transition.circularReveal, duration: Duration(seconds: 2));
                },
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,)),
              ),
          ),
        ),
    ]
      ),
    );
  }
}
