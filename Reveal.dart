import 'package:flutter/material.dart';

class Reveal extends StatefulWidget{

  const Reveal({super.key});

  @override

  State<Reveal> createState() => _RevState();
}

class _RevState extends State<Reveal>{



  @override
  Widget build(BuildContext context) {
    Alignment top=Alignment.topCenter;

    return MaterialApp(
        home: Scaffold(
          body: Center(
              child: Stack(
                children: [
                  Positioned(
                   child:
                    Container(
                      color: Colors.blueAccent,
                    width: 250,
                    height: 500,
                    alignment: Alignment.center,
                    child: const Text("Surprise!",textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40),)
                      ,
                  ),
                  ),
                  AnimatedPositioned(duration: const Duration(milliseconds:500), child: GestureDetector(

                    onTap: (){
                      //setState(() {
                        print("tapped");
                        print(top);
                        if(top==Alignment.topCenter){
                          top=Alignment.bottomCenter;
                        }


                    },
                    child: Container(
                      transformAlignment: top,
                      alignment: top,
                      width: 250,
                      height: 80,
                      color: Colors.redAccent,
                    ),
                  ))

                ],


              )
          ),
        )
    );

  }

}