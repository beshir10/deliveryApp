import 'package:dele/home_page.dart';
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
    HomePage()

  ];

  @override
  Widget build(BuildContext context) {
    // const controller=Bnb();
    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(127),
          child: Image.asset(
            'Images/Categories/Wasili.logo.png',
            fit: BoxFit.contain,
          ),
        ),

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
