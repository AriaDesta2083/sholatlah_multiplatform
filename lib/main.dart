


import 'package:flutter/material.dart';
import 'features/home/presentation/pages/home_page.dart';

void main()=>runApp(SholatApp());


class SholatApp extends StatelessWidget {
  const SholatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}