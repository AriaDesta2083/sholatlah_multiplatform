import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sholatlah/features/auth/presentation/widgets/text_title_widgets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final CarouselSliderController _controller = CarouselSliderController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final szWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              height: 200,
              width: szWidth * 0.8,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/images/onboarding_mosque.png'), fit: BoxFit.fitWidth)),
              child: textTitle,
            ),
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/images/welcome.png',
                  height: 350,
                ),
                Image.asset(
                  'assets/images/reading.png',
                  height: 350,
                ),
                Image.asset(
                  'assets/images/bearish.png',
                  height: 350,
                ),
                Image.asset(
                  'assets/images/radio.png',
                  height: 350,
                ),
              ],
              options: CarouselOptions(
                height: 350,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                viewportFraction: 1,
                enableInfiniteScroll: false,
              ),
              carouselController: _controller,
            ),
            TextButton(
              onPressed: () =>
                  _controller.nextPage(),
              child: Text('→',style: TextStyle(color: Colors.blue),),
            )
          ],
        ),
      ),
    );
  }
}
