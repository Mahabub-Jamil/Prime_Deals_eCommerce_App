import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_deals/app/asset_path.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = 'emailverificationscreen';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 24),
          SvgPicture.asset(AssetPath.splashLogoSvg, width: 100),
          Text("Welcome Back"),
        ],
      ),
    );
  }
}
