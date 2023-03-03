import 'package:get/get.dart';

class Players extends GetxController{
  RxList players =  [].obs;
  RxInt playerIndex = 0.obs;

  List getPlayers(){
    return players;
  }

  void addPlayers(String playerName){
    players.add(playerName) ;
  }
  void deletePlayer(int index){
    players.remove(players[index])  ;
  }
  String getPlayerName(){
   String playerName =  players[playerIndex.value];
    playerIndex++;
    return playerName;
  }

}