import 'package:flutter/material.dart';

import 'core/utils/app_routes.dart';
import 'core/utils/route_names.dart';

void main()=>runApp(SholatApp());


class SholatApp extends StatelessWidget {
  const SholatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sholat lah',
      initialRoute: RouteNames.onboarding,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}


// ! [PROJECTS]
// https://excalidraw.com/#json=8I-LYoMXXpwN6miSINjnL,q7me5L7URcLoE4HfN3Xwkg
