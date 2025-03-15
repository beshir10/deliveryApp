import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String photo;
   Categories({super.key,
  required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
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

    ),
    );
  }
}
