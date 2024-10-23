import 'package:flutter/material.dart';

class Logo extends StatefulWidget{

  const Logo({super.key});

  @override

  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo>{
  bool IsZoomed=true;
  double d1=300;
  double d2=300;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  if(IsZoomed){
                    d1=50;
                    IsZoomed=false;

                  }else{
                    d1=300;
                    IsZoomed=true;

                  }

                });
              },child: FlutterLogo(
                size: d1,

            ),
            )
          ),
        )
    );

  }

}