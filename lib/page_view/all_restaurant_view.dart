import 'package:flutter/material.dart';

import '../Widget/restaurantCard.dart';
class AllRestaurantView extends StatefulWidget {
  const AllRestaurantView({super.key});

  @override
  State<AllRestaurantView> createState() => _AllRestaurantViewState();
}

class _AllRestaurantViewState extends State<AllRestaurantView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,


      ),
      body: ListView(
        children: [
          SizedBox(

            width:MediaQuery.of(context).size.width,
            child:
            RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
            ,
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width,
            child:
            RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
            ,
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width,
            child:
            RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
            ,
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width,
            child:
            RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
            ,
          ),
          SizedBox(
            width:MediaQuery.of(context).size.width,
            child:
            RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
            ,
          ),

        ],
      ),
    );
  }
}
