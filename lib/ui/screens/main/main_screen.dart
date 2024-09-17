import 'package:flutter/material.dart';
import 'package:muzic/ui/utils/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  static const String routeName = "MainScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        
      ),
    );
  }
}
