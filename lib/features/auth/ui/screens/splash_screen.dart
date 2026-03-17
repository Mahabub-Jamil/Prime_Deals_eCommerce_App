import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_deals/app/asset_path.dart';
import 'package:prime_deals/features/auth/ui/screens/email_verification_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, EmailVerificationScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(AssetPath.splashLogoSvg, width: 140),
              const Spacer(),
              const CircularProgressIndicator(),
              Text(
                "version 1.0",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
