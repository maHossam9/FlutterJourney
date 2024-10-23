import 'package:flutter/material.dart';

class opacity extends StatefulWidget{

  const opacity({super.key});

  @override

  State<opacity> createState() => _OpState();
}

class _OpState extends State<opacity>{
  @override
  Widget build(BuildContext context) {
    double opacity=1;
    return  MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedOpacity(opacity: opacity, duration: const Duration(seconds: 1),
                    child: const FlutterLogo(
                      size: 100,style: FlutterLogoStyle.stacked,
                    ),),
                  const SizedBox(
                    height: 100,
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      opacity=(opacity==1? 0:1);
                    });
                  }, child: Text("Change")),


                ],
                
                
              )
            )
        )
    );

  }

}