import 'package:flutter/material.dart';
import 'package:muzic/ui/screens/main/main_screen.dart';
import 'package:muzic/ui/utils/app_assets.dart';
import 'package:muzic/ui/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(context, MainScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.Ko7le,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.splashIcon,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Muzic",
              style: TextStyle(
                fontFamily: 'Circular Std',
                fontSize: 24,
                fontWeight: FontWeight.normal,
                color: AppColors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
