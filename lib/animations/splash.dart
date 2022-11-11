import 'package:flutter/material.dart';
import 'package:veete/widgets/colors.dart';

class SplashScreen extends StatelessWidget{
  final int duration;
  final Widget goToPage;
  const SplashScreen ({Key? key, required this.goToPage, this.duration = 0})
        : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), ()=> Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => goToPage)
    ));

    return Scaffold(
      body: Container(
        color: COLORS.kLight,
        alignment: Alignment.center,
        child: const Icon(Icons.roofing_rounded, color: Colors.white, size: 100,),
      ),
    );
  }

}