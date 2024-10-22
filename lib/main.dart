import 'package:flutter/material.dart';
import 'package:muzic/ui/screens/main/main_screen.dart';
import 'package:muzic/ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (_)=> const SplashScreen(),
        MainScreen.routeName : (_)=> const MainScreen(),
      },
    );
  }
}
