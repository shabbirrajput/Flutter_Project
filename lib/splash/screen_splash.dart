import 'package:flutter/material.dart';
import 'package:shopping_app/core/app_image.dart';

import '../onboarding/screen_onboarding.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
              (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7],
          colors: [
            Color(0xFFF3F2F2),
            Color(0xFFA8A7A7),
            Color(0xFFDAD5D5),
          ],
        ),
      ),
      child: Center(
        child: Image.asset(
          AppImage.appLogo,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
