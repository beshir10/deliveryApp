import 'package:dele/page_view/basket_page.dart';
import 'package:dele/page_view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
  int selectedindex = 0;

  List<Widget> Bottompages = [
    BasketPage(),
    HomePage(),

  ];

  @override
  Widget build(BuildContext context) {
    // const controller=Bnb();
    return Scaffold(
      extendBody: true,
      appBar: AppBar(

        actions: [Image.asset('Images/Categories/Wasili.logo.png',
          height: 140,
          width: 100,
          fit: BoxFit.fill,
        ),],
        leading:
        InkWell(
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined,
              size: 40,
              color: Theme.of(context).primaryColor,),
              
              SizedBox(width: 5,),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Al-Kadhimiya'),
                SizedBox(height: 5,),
                Text('Al-Nuab,Street')
              ],)
          
            ],
          ),
          onTap: (){},
        ),
        leadingWidth: MediaQuery.of(context).size.width/1.6,
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        scrolledUnderElevation: 0,

      ),



      body: IndexedStack(

        index: selectedindex,
        children: Bottompages,
      ),
      bottomNavigationBar: CustomNavigationBar(
        borderRadius: const Radius.circular(20),
        isFloating: true,
        iconSize: 35.0,
        selectedColor:  Theme.of(context).primaryColor,
        strokeColor:  Theme.of(context).primaryColor,
        unSelectedColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).dialogBackgroundColor ,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.account_circle),
            title: const Text("Me"),
          ),

          CustomNavigationBarItem(
            icon: const Icon(Icons.home_outlined,),
            title: const Text("Home"),
          ),

          CustomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_outlined),
            title: const Text("Cart"),
          ),


        ],
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),

    );
  }
}
