
import 'package:flutter/material.dart';



class Game extends StatefulWidget{
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Car Crash"),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Stack(


            ),

          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {

              }, child: Text("Up")),
              ElevatedButton(onPressed: () {

              }, child: Text("Down")),
              ElevatedButton(onPressed: () {

              }, child: Text("Right")),
              ElevatedButton(onPressed: () {

              }, child: Text("Left"))
            ]
            ,
          ),

        ],


      ),



      );


  }
}