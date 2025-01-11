import 'package:flutter/material.dart';
import 'package:sholatlah/core/themes/my_themes.dart';

class CaptionOnBoarding extends StatelessWidget {
  const CaptionOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        Text(
          'Selamat datang di Sholatlah',
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          'Semoga lelah kita menjadi Lillah\nsemangat beribadah',
          textAlign: TextAlign.center,
          style: goldText,
        ),
      ],
    );
  }
}
