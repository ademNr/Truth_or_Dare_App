
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:truth_or_dare/view/HomePage.dart';
import 'package:truth_or_dare/view/wheel_page.dart';
import '../data/players.dart';
class AddPlayersPage extends StatefulWidget {
  const AddPlayersPage({Key? key}) : super(key: key);

  @override
  State<AddPlayersPage> createState() => _AddPlayersPageState();
}

class _AddPlayersPageState extends State<AddPlayersPage> {
  Players _players = Get.put(Players());
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 50,
        backgroundColor: Colors.black.withOpacity(0.9),
        child: Icon(Icons.person_add_alt, color: Colors.white,),
        onPressed: (){
          showDialog<String>(

            context: context,
            builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.black.withOpacity(0.7),
              title: const Text('Add player', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,shadows:
              <Shadow>[
                Shadow(
                  blurRadius: 10.0,
                  // color of the shadow
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],),),
              actions: <Widget>[
                TextField(
                  cursorColor: Colors.white,
                  controller: nameController,
                   style: TextStyle(
                     color: Colors.white
                   ),
                  decoration:  InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white, //<-- SEE HERE
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    ),

                    border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                                width: 3,

                            ),





                    ),
                    labelText: 'Player Name',

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                    ),
                    TextButton(
                      onPressed: () {
                        _players.addPlayers(nameController.text);
                        _players.players.refresh();
                        Navigator.pop(context, 'Cancel');
                      },
                      child: const Text('Add Player', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                  ],
                )
              ],
            ),
          );

        },
      ),
      body:  Stack(
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
            child: Obx(()=> _players.players.isEmpty ?
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Center(child: Image.asset("lib/assets/players.png", color: Colors.white,)),
                  Text("Add players", style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 15, shadows:
                  <Shadow>[
                    Shadow(
                      blurRadius: 10.0,
                      // color of the shadow
                      color: Colors.black,
                      offset: Offset(5, 5),
                    ),
                  ],),)
                ],
              ),
            )  
                :
             SafeArea(
              child:
                 ListView(
                   children:[
                     SizedBox(height: 50,),
                     Container(
                       padding: EdgeInsets.only(left: 60),
                         child: Text("Players Selection", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 1, shadows:
                         <Shadow>[
                           Shadow(
                             blurRadius: 10.0,
                             // color of the shadow
                             color: Colors.black,
                             offset: Offset(5, 5),
                           ),
                         ],),)),
                     SizedBox(height: 50,),
                     Obx(
                      ()=>ListView.builder(
                          shrinkWrap: true, physics: ScrollPhysics(),
                      itemCount: _players.players.length ,
                        itemBuilder: (context , index){
                          return Container(
                              child: _players.players.isEmpty ? const Center(child: Text("add players", style: TextStyle(color: Colors.black87),),)
                                  :
                                Card(
                                  color: Colors.black.withOpacity(0.7),
                                  elevation: 5,
                                  child: ListTile(
                                    title: Text("${_players.players[index]}", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1),),
                                    subtitle: Text("player ${index+1}", style: TextStyle(color: Colors.white),),

                                    trailing: IconButton(
                                      onPressed: (){
                                        _players.deletePlayer(index);
                                      },
                                      icon:  Icon(Icons.delete, color: Colors.redAccent.withOpacity(0.7),),
                                    ),
                                  ),
                                ),


                          );
                        }
                    ),
                ),


    ]
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
                  Get.to(()=>HomePage(), transition: Transition.circularReveal, duration: Duration(seconds: 2));
                },
                child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_back_ios, color: Colors.white,size: 30,)),
              ),
            ),
          ),
          Obx(()=>
           _players.players.length<=1 ? Text(""): SafeArea(
              child: Container(
                padding: EdgeInsets.only(bottom: 15,),
                alignment: AlignmentDirectional.bottomCenter,
                child: FloatingActionButton(
                  backgroundColor: Colors.green.withOpacity(0.7),
                  onPressed: (){
                    Get.to(()=>Wheel(), arguments: nameController.text );
                  },
                  child: Container(

                      child: Text("Play", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                ),
              ),
            ),
            ),
          ),
    ]
      ),

    );
  }
}
