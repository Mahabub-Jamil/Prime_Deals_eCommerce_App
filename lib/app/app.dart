import 'package:flutter/material.dart';
import 'package:prime_deals/app/app_theme_data.dart';
import 'package:prime_deals/features/auth/ui/screens/email_verification_screen.dart';
import 'package:prime_deals/features/auth/ui/screens/splash_screen.dart';

class PrimeDeals extends StatelessWidget {
  const PrimeDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        EmailVerificationScreen.name: (context) =>
            const EmailVerificationScreen(),
      },
    );
  }
}
