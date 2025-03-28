import 'package:flutter/material.dart';

class Resturants extends StatelessWidget {
  // final String photo;
  const Resturants({
    super.key,
    // required this.photo
  });

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(6),
        width: 350,

        child: Column(
          children: [
            Container(

              height: 250,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  border: Border(
                    top: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                    right: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                    left: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                    bottom: BorderSide(width: 3, color: Theme.of(context).primaryColor),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(3, 3),
                    )
                  ]),
              child: Column(
                children: [
                Container(
                  height: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(25),topRight: Radius.circular(25)),
                  image: DecorationImage(
                      image: AssetImage('Images/Restaurants/gril99.png',),
                      fit: BoxFit.cover
                  ),)
                ),
                

              ],

              ),
            ),

          ],

        ),
      
      );
  }
}
// Container(
//   margin: EdgeInsets.all(6),
//   width: 350,
//   decoration: BoxDecoration(
//
//       color: Theme.of(context).scaffoldBackgroundColor,
//       borderRadius: BorderRadius.circular(25),
//       image: DecorationImage(image: AssetImage(photo),
//           fit: BoxFit.fill
//       ),
//       border: Border(
//         top: BorderSide(width: 3,color: Theme.of(context).primaryColor),
//         right:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
//         left:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
//         bottom:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
//
//       ),
//       boxShadow: <BoxShadow>[
//         BoxShadow(
//           color: Colors.grey,
//           blurRadius: 5,
//           offset: Offset(3, 3),
//         )
//
//       ]
//
//   ),                  ),