import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final szHeight = MediaQuery.of(context).size.height;
    final szWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/splash_bg.png'), fit: BoxFit.fitHeight)),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: Container(
              height: szHeight * 0.33,
              width: szWidth * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash_lamp.png'), fit: BoxFit.fitHeight,),),
            ),
          ),
          Positioned(
            left: -80,
            top: 250,
            child: Container(
              height: szWidth * 0.4,
              width: szWidth * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash_items.png'), fit: BoxFit.fitHeight)),
            ),
          ),
          Positioned(
            right: -110,
            bottom: 150,
            child: Container(
              height: szWidth * 0.5,
              width: szWidth * 0.5,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash_items.png'), fit: BoxFit.fitHeight)),
            ),
          ),
          Column(
            spacing: 5,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: szWidth * 0.5,
                height: szWidth * 0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/splash_logo.png'), fit: BoxFit.fitWidth)),
              ),
              Text(
                'Sholatlah',
                style: TextStyle(
                  fontFamily: 'Kamali',
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffE2BE7F),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 30,
            child: Text('by: ariadestap.dev',style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Color(0xffE2BE7F)),))
        ],
      ),
    );
  }
}
