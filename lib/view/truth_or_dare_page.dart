import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truth_or_dare/data/truthOrDareDataSource.dart';
import 'package:truth_or_dare/view/wheel_page.dart';

class TruthOrDare extends StatefulWidget {
  const TruthOrDare({Key? key}) : super(key: key);

  @override
  State<TruthOrDare> createState() => _TruthOrDareState();
}

class _TruthOrDareState extends State<TruthOrDare> {
  TruthOrDareDataSource truthOrDareDataSource = Get.put(TruthOrDareDataSource()); 
   String truth= "" ;
   String dare = "";
  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    truth = truthOrDareDataSource.getQuestion() ;
                  });
                  showDialog(

                    context: context,
                    builder: (BuildContext context) => AlertDialog(

                      elevation: 20,
                      title: Text(' Truth', style: TextStyle(fontWeight: FontWeight.bold , letterSpacing: 1, fontSize: 30),),
                      content:  Text('${truth}', style: TextStyle(fontSize: 20),),
                      actions: [
                        TextButton(
                          onPressed: () => Get.to(()=>Wheel(), duration:Duration(seconds: 2), transition: Transition.circularReveal),
                          child: const Text('Next Player', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 20 ),),
                        ),

                      ],
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                      gradient: LinearGradient(
                        tileMode: TileMode.clamp,
                          colors: [
                            Colors.pink.shade900,
                            Colors.pink.shade700,
                            Colors.pink.shade500,
                            Colors.pink.shade400
                          ]

                      )
                  ),
                  height: MediaQuery.of(context).size.width*0.5,
                  width: MediaQuery.of(context).size.width,

                  child: Center(
                    child: Text("Truth", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 3,shadows:
                    <Shadow>[
                      Shadow(
                        blurRadius: 10.0,
                        // color of the shadow
                        color: Colors.black,
                        offset: Offset(5, 5),
                      ),
                    ],),),
                  )
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    dare = truthOrDareDataSource.getDare() ;
                  });
                  showDialog(

                    context: context,
                    builder: (BuildContext context) => Container(

                      child: AlertDialog(
                        elevation: 20,
                        title: Text('Dare',style: TextStyle(fontWeight: FontWeight.bold , letterSpacing: 1, fontSize: 30),),
                        content:  Text('${dare}', style: TextStyle(fontSize: 20),),
                        actions: [
                          TextButton(
                            onPressed: () => Get.to(()=>Wheel()),
                            child: const Text('Next Player', style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w600, fontSize: 20),),
                          ),

                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade800,
                        Colors.blueAccent,
                        Colors.lightBlueAccent,
                ]

                    )
                  ),
                  height: MediaQuery.of(context).size.width*0.5,
                  width: MediaQuery.of(context).size.width,

                  child: Center(
                      child: Text("Dare",style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 3,shadows:
                      <Shadow>[
                        Shadow(
                          blurRadius: 10.0,
                          // color of the shadow
                          color: Colors.black,
                          offset: Offset(5, 5),
                        ),
                      ],), )
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
