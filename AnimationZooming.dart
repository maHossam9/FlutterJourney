import 'package:flutter/material.dart';
import 'DartLogo.dart';

class Zooming extends StatefulWidget{
  const Zooming({super.key});

  @override

    State<Zooming> createState() => _ZoomingState();
  }

class _ZoomingState extends State<Zooming>{
  double h=50;
  double w=50;
  double r=20;
  Color c=Colors.purple;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(duration: const Duration(seconds: 5),
            height: h,
            width: w,
            color: c,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
              h=200;
              w=200;
              c=Colors.redAccent; });
            }, child: const Text("Enlarge")),
            ElevatedButton(onPressed: (){
    setState(() {
              h=50;
              w=50;
              c=Colors.blueAccent; });
            }, child: const Text("Shrink")),
            FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Logo()));
            })
          ],
        ),
      ),
        )
    );

  }

}