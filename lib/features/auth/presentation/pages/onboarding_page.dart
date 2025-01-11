import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sholatlah/core/utils/animation.dart';
import 'package:sholatlah/features/auth/presentation/widgets/captions_onboarding.dart.dart';
import '../../../../core/themes/my_themes.dart';
import '../widgets/text_title_widgets.dart';

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
              child: sholatlahText,
            ),
            CarouselSlider(
              items: [
                CustomAnimation(
                  delay: 1,
                  child: Image.asset(
                    'assets/images/welcome.png',
                    height: 350,
                  ),
                ),
                CustomAnimation(
                  delay: 1,
                  child: Image.asset(
                    'assets/images/reading.png',
                    height: 350,
                  ),
                ),
                CustomAnimation(
                  delay: 1,
                  child: Image.asset(
                    'assets/images/bearish.png',
                    height: 350,
                  ),
                ),
                CustomAnimation(
                  delay: 1,
                  child: Image.asset(
                    'assets/images/radio.png',
                    height: 350,
                  ),
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
            SizedBox(
              height: 40,
            ),
            CaptionOnBoarding(),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => _controller.previousPage(),
                    child: Text(
                      'Back',
                      style: goldText,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  TextButton(
                    onPressed: () => _controller.nextPage(),
                    child: Text(
                      'Next',
                      style: goldText,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
