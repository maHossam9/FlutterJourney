import 'package:flutter/material.dart';

class Bounce extends StatefulWidget{

  const Bounce({super.key});

  @override

  State<Bounce> createState() => _BState();
}

class _BState extends State<Bounce>{
  @override
  Widget build(BuildContext context) {
    AlignmentGeometry align=Alignment.topCenter;
    bool x=false;
    return MaterialApp(
        home: Scaffold(
          body: Center(
              child: Container(
                      color: Colors.indigoAccent,
                      width: 250,
                      height: 500,
                child:
                      GestureDetector(
                  onTap:(){
                    setState(() {
                      print(align);

                      if (align==Alignment.topCenter){
                        align=Alignment.bottomCenter;
                      }
                      else{
                        align=Alignment.topCenter;
                      }
                    });
                  },child: AnimatedAlign(alignment: align
                        ,duration:  const Duration(seconds: 1),
                        child:  const FlutterLogo(
                  size: 100,
                ),
                ),
                    ),
                  ),
              )
        )
    );

  }

}