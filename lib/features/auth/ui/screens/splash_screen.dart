import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_deals/app/asset_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(AssetPath.splashLogoSvg, width: 90),
            Spacer(),
            CircularProgressIndicator(),
            Text("version 1.0", style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
