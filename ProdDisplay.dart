import 'package:flutter/material.dart';
import 'package:flutter_project/ProdDetails.dart';
import 'Product.dart';
import 'UserProfile.dart';


List<Product>MyProdList=[
  Product(name: "Fancy Fleur",prodImg: "assets/images/1.webp",description: "Floral and Fresh",size: 50,price: 8),
  Product(name: "Velvet Muse",prodImg: "assets/images/2.webp",description: "Sweet and fruity",size: 30,price: 6),
  Product(name: "Dark Candy",prodImg: "assets/images/3.webp",description: "Deep and intense",size: 100,price: 10),
  Product(name: "Bella vita",prodImg: "assets/images/4.webp",description: "Summery",size: 50,price: 8),
  Product(name: "Greek icon",prodImg: "assets/images/5.webp",description: "Sugary and intense",size: 50,price: 8),
];
class ProdCardBuilder extends StatelessWidget{
  final Product prod;
  const ProdCardBuilder({super.key, required this.prod});

  @override
  Widget build(BuildContext context){

    return GestureDetector(
    onTap : (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProdPage(prd:prod),
        ),
      );
    },
      child:Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,


        child:
        Stack(
            children: [

              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,


                  children:[ Image.asset(prod.prodImg,width: 100,height: 125,
                  )
                    ,

                    Text(prod.name,
                        style:const TextStyle(fontFamily: 'RaleWay',fontSize: 20, color: Colors.black54  )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${prod.size} ml",
                          style:const TextStyle(fontFamily: 'RaleWay',fontSize: 15, color: Colors.black54  )
                          ,),
                        Text("${prod.price} USD",
                          style:const TextStyle(fontFamily: 'RaleWay',fontSize: 15, color: Colors.black54  )
                          ,)
                      ],
                    )
                  ]),
              const IconButton(onPressed: onPressed, icon: Icon(Icons.favorite_border_outlined))
            ]),
      )
    );
  }
}

class first_app extends StatelessWidget{
  const first_app({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Display Products"),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontFamily: 'RaleWay',fontSize: 30, color: Colors.black54  ),
      ),
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
              scrollDirection: Axis.vertical,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),itemCount: MyProdList.length
              , itemBuilder: (context, index) {
            return ProdCardBuilder(prod: MyProdList[index]);}
          ),
        ),
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
