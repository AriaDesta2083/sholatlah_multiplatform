import 'package:flutter/material.dart';

import '../../features/auth/presentation/pages/onboarding_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/doa/presentation/pages/doa_detail_page.dart';
import '../../features/doa/presentation/pages/doa_page.dart';
import '../../features/dzikir/presentation/pages/dzikir_detail_page.dart';
import '../../features/dzikir/presentation/pages/dzikir_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/sholat/presentation/pages/sholat_detail_page.dart';
import '../../features/sholat/presentation/pages/sholat_page.dart';
import 'route_names.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case RouteNames.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case RouteNames.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingPage());
      case RouteNames.sholat:
        return MaterialPageRoute(builder: (_) => SholatPage());
      case RouteNames.dzikir:
        return MaterialPageRoute(builder: (_) => DzikirPage());
      case RouteNames.doa:
        return MaterialPageRoute(builder: (_) => DoaPage());
      case RouteNames.sholatDetail:
        return MaterialPageRoute(builder: (_) => SholatDetailPage());
      case RouteNames.dzikirDetail:
        return MaterialPageRoute(builder: (_) => DzikirDetailPage());
      case RouteNames.doaDetail:
        return MaterialPageRoute(builder: (_) => DoaDetailPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page Not Found')),
          ),
        );
    }
  }
}
