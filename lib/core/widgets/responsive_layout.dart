import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget tv;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.tv,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          // Untuk TV
          return tv;
        } else if (constraints.maxWidth >= 800) {
          // Untuk Desktop
          return desktop;
        } else if (constraints.maxWidth >= 600) {
          // Untuk Tablet
          return tablet;
        } else {
          // Untuk Ponsel
          return mobile;
        }
      },
    );
  }
}
