
import 'package:dele/bnb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_Screen_view extends StatefulWidget {
  @override
  _Splash_Screen_viewState createState() => _Splash_Screen_viewState();
}

class _Splash_Screen_viewState extends State<Splash_Screen_view>
    with SingleTickerProviderStateMixin {
  late Animation<double> opacity;
  late AnimationController controller;

  @override
  void initState() {
    // initialize();
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 3500), vsync: this);
    opacity = Tween<double>(begin: 1.0, end: 0.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward().then((_) {
      navigationPage();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void navigationPage() {
    Get.offAll(Bnb());
  }

  Widget build(BuildContext context) {
    return new Scaffold(
       backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Opacity(
                opacity: opacity.value,
                child: new
                Image.asset('Images/wasili.png')
            ),),

            // Expanded(
            //   child: Opacity(
            //       opacity: opacity.value,
            //       child: new
            //       Image.asset('Images/wasili.png')
            //   ),
            // ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(text: 'Powered by '),
                      TextSpan(
                          text: 'int2.io',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}