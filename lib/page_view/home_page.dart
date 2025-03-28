import 'package:carousel_slider/carousel_slider.dart';
import 'package:dele/Widget/categories.dart';
import 'package:dele/Widget/home_search.dart';
import 'package:dele/Widget/restaurantCard.dart';
import 'package:dele/Widget/resturants.dart';
import 'package:dele/page_view/all_restaurant_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dialogBackgroundColor,

      body:ListView(
        children: [
          SizedBox(height: 10,),
          HomeSearch(),

          SizedBox(height: 10,),
          CarouselSlider(

            options: CarouselOptions(height: 200.0,
            reverse: true,
            autoPlayInterval: Duration(seconds: 10),
            autoPlay: true,),

            items: [
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToWII83Kkm7p7knuES9A7PwvnWEoaS-XeoCA&s',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJesMlzqxIlsOBNBl5YJUOKIZmBn7YInIK4w&s',
              'https://img.freepik.com/free-psd/modern-banner-breakfast-restaurant_23-2148351348.jpg',
              'https://www.ramadajamshedpurbistupur.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-18-at-1.27.54-PM.jpeg',
              'https://img.pikbest.com/origin/06/24/84/26bpIkbEsTfu6.jpg!w700wp',
            ].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(i))),
                  );
                },
              );
            }).toList(),
          ),


          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  child: Text('الكل',
                    style: TextStyle(color: Theme.of(context).primaryColor,),
                  ),
                  onTap: (){},
                ),
                Spacer(),
                Text('العناصر',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20),),



              ],
            ),
          ),


          SizedBox(
            height: 110,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
                Categories(photo: 'Images/Categories/burger.png'),
                Categories(photo: 'Images/Categories/biryani.png'),
                Categories(photo: 'Images/Categories/chicken.png'),
                Categories(photo: 'Images/Categories/shawarma.png'),
                Categories(photo: 'Images/Categories/kebab.png'),


              ],

            ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  child: Text('الكل',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onTap: (){
                    Get.to(AllRestaurantView());
                  },
                ),
                Spacer(),
                Text('المطاعم المشهوره',style: TextStyle(fontWeight: FontWeight.bold,
                    // fontStyle: Theme.of(context).textTheme.titleMedium,
                    fontSize: 20),),



              ],
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height/3.4,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/topOrganic.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/restaurant.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),

              ],

            ),
          ),
          SizedBox(height: 7,),
          SizedBox(
            height: MediaQuery.of(context).size.height/3.4,
            child: ListView(
              reverse: true,
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/gril99.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/topOrganic.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),
                SizedBox(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:
                  RestaurantCard(name: '99gril', cuisine: 'hello', rating: 10.0, deliveryTime: '01:10', imageUrl: 'Images/Restaurants/restaurant.png', distance: 'distance', priceLevel: 'priceLevel')
                  ,
                ),

              ],

            ),
          ),
          // SizedBox(
          //   height: 300,
          //   child: ListView(
          //     reverse: true,
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       Resturants(photo: 'Images/Restaurants/gril99.png'),
          //       Resturants(photo: 'Images/Restaurants/topOrganic.png'),
          //       Resturants(photo: 'Images/Restaurants/restaurant.png'),
          //
          //     ],
          //
          //   ),
          // ),
        ],
      )

    );
  }
}
