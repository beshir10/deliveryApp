import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({super.key});

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30,),
                borderSide: BorderSide(width: 1,
                  color: Color(0xffff9d23),)
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
            
            hintText: "Search",
            hintStyle:  TextStyle(color: Colors.black),


          ),
        ),
      );

  }
}
