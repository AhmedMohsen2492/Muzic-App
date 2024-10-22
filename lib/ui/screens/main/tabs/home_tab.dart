import 'package:flutter/material.dart';
import 'package:muzic/ui/utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ko7le,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Hot Recommended",
                style: TextStyle(
                  fontFamily: 'Circular Std',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: AppColors.white.withOpacity(0.8),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.25,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildRecommendWidget(context),
              ),
            ),
            Divider(
              color: AppColors.white.withOpacity(0.07),
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Row(
                children: [
                  Text(
                    "Playlist",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.8),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.accent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.25,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildPlayListWidget(context),
              ),
            ),
            Divider(
              color: AppColors.white.withOpacity(0.07),
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Row(
                children: [
                  Text(
                    "Recently Played",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.8),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.accent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 15,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              // Disable inner scrolling
              shrinkWrap: true,
              // Allow it to size itself
              itemBuilder: (context, index) =>
                  buildRecentlyPlayedWidget(context),
            ),
          ],
        ),
      ),
    );
  }

  buildRecommendWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppAssets.test1,
              height: MediaQuery.sizeOf(context).height * 0.15,
              width: MediaQuery.sizeOf(context).height * 0.28,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Sound of Sky",
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: AppColors.white.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Dilon Bruce",
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }

  buildPlayListWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppAssets.test2,
              height: MediaQuery.sizeOf(context).height * 0.15,
              width: MediaQuery.sizeOf(context).width * 0.3,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Summer Playlist",
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: AppColors.white.withOpacity(0.6),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Dilon Bruce",
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }

  buildRecentlyPlayedWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Image.asset(AppAssets.playIcon)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Billie Jean",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Piano Guys",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.28),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const Icon(
                    Icons.favorite_outline_rounded,
                    color: AppColors.darkOrange,
                    size: 20,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(AppAssets.star),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(AppAssets.star),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(AppAssets.star),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(AppAssets.star),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(AppAssets.star),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            color: AppColors.white.withOpacity(0.07),
            thickness: 2,
            indent: MediaQuery.sizeOf(context).width * 0.12,
          ),
        ],
      ),
    );
  }
}
