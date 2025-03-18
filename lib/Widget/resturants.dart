import 'package:flutter/material.dart';

class Resturants extends StatelessWidget {
  final String photo;
  const Resturants({super.key,
  required this.photo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Container(
        margin: EdgeInsets.all(6),
        width: 350,
        decoration: BoxDecoration(

            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(photo),
                fit: BoxFit.fill
            ),
            border: Border(
              top: BorderSide(width: 3,color: Theme.of(context).primaryColor),
              right:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
              left:  BorderSide(width: 3,color: Theme.of(context).primaryColor),
              bottom:  BorderSide(width: 3,color: Theme.of(context).primaryColor),

            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                offset: Offset(3, 3),
              )

            ]

        ),                  ),
    );
  }
}