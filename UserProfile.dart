import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/ProdDisplay.dart';

void onPressed(){

}

class MyPage extends StatefulWidget{
  const MyPage({super.key});
  @override
  MyPageState createState()=>MyPageState();}

class MyPageState extends State<MyPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Profile"),
        titleTextStyle: const TextStyle(fontFamily: 'RaleWay',fontSize: 30, color: Colors.black54  ),

      ),
      body : const Center(
          child:
          Padding(padding: EdgeInsets.only(left: 16.0,top: 50.0,right: 16.0,bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
            height: 100,
            width: 100,
            child: Placeholder(

            ),

          ),
                SizedBox(

                  height: 30,
                ),
            SizedBox(

              child: Text("Name of User",
                style: TextStyle(fontSize: 30,color:Colors.black87 ),

            )
            ),
                SizedBox(

                  height: 30,
                ),

                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Icon(Icons.account_circle,size: 50,color: Colors.black54,),
                          SizedBox(width: 20),
                          Text("Edit details",
                          style: TextStyle(fontSize: 25,color:Colors.black87 ))
                        ],
                      ),
                      IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),SizedBox(

              height: 30,
            ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Icon(Icons.security_rounded,size: 50,color: Colors.black54,),
                          SizedBox(width: 20),
                          Text("Change password",
                              style: TextStyle(fontSize: 25,color:Colors.black87 ))
                        ],
                      ),
                      IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),SizedBox(

                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Icon(Icons.location_on_outlined,size: 50,color: Colors.black54,),
                          SizedBox(width: 20),
                          Text("Change Location",
                              style: TextStyle(fontSize: 25,color:Colors.black87 ))
                        ],
                      ),
                      IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),SizedBox(

                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Icon(Icons.phone_iphone_rounded,size: 50,color: Colors.black54,),
                          SizedBox(width: 20),
                          Text("App info",
                              style: TextStyle(fontSize: 25,color:Colors.black87 ))
                        ],
                      ),
                      IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),SizedBox(

                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          Icon(Icons.logout_outlined,size: 50,color: Colors.redAccent),
                          SizedBox(width: 20),
                          Text("Log out",
                              style: TextStyle(fontSize: 25,color:Colors.black87 ))
                        ],
                      ),
                      IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                ),
           ],
      )
    )
      ),
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


    );
  }

}