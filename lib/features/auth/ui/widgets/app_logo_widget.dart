import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prime_deals/app/asset_path.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetPath.splashLogoSvg, width: 140);
  }
}
