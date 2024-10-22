import 'package:flutter/material.dart';
import 'package:muzic/ui/utils/app_colors.dart';
import '../../../utils/app_assets.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ko7le,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(20),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.displayIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Display",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(22),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.audioIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Audio",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(22),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.headsetIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Headset",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(22),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.lockIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Lockscreen",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            padding: const EdgeInsets.all(22),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.advancedIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Advanced",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            elevation: 0,
            padding: const EdgeInsets.all(22),
            color: AppColors.ko7le,
            child: Row(
              children: [
                Image.asset(AppAssets.otherIcon),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Other",
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: AppColors.white.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
