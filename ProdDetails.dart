import 'package:flutter/material.dart';
import 'package:flutter_project/ProdDisplay.dart';
import 'package:flutter_project/UserProfile.dart';
import 'Product.dart';


void Pressed(){
  //runApp(const MyPageS());
}
class ProdPage extends StatelessWidget{
  final Product prd;
  const ProdPage({super.key,required this.prd});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title:  Text(prd.name),
    titleTextStyle: const TextStyle(fontFamily: 'RaleWay',fontSize: 30, color: Colors.black54  ),
        ),
        body: Stack(
        children: [


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,


                children:[ Image.asset(prd.prodImg,height: 500,
                )
                  ,

                  Text(prd.name,
                      style:const TextStyle(fontFamily: 'RaleWay',fontSize: 30, color: Colors.black54  )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${prd.size} ml",
                        style:const TextStyle(fontFamily: 'RaleWay',fontSize: 20, color: Colors.black54  )
                        ,),
                      Text("${prd.price} USD",
                        style:const TextStyle(fontFamily: 'RaleWay',fontSize: 20, color: Colors.black54  )
                        ,)
                    ],
                  ),
                  Text(prd.description,
                    style:const TextStyle(fontFamily: 'RaleWay',fontSize: 20, color: Colors.black54  )
                    ,)
                ]),
          ),
          const IconButton(onPressed: Pressed, icon: Icon(Icons.favorite_border_outlined))
        ]),


      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(
              label: 'Home',
              icon:IconButton(
                  onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const first_app()),
                );
              }
                  , icon: const Icon(Icons.home_filled))
          ),
             BottomNavigationBarItem(
                label: 'My Profile',
                icon: IconButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyPage()),
                  );
                }, icon: const Icon(Icons.account_circle))
            )
          ])
    );}}