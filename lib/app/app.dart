import 'package:flutter/material.dart';
import 'package:prime_deals/app/app_theme_data.dart';
import 'package:prime_deals/features/auth/ui/screens/splash_screen.dart';

class PrimeDeals extends StatefulWidget {
  const PrimeDeals({super.key});

  @override
  State<PrimeDeals> createState() => _PrimeDealsState();
}

class _PrimeDealsState extends State<PrimeDeals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightThemeData,
      initialRoute: '/',
      routes: {'/': (context) => SplashScreen()},
    );
  }
}
