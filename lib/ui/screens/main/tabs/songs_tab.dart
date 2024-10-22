import 'package:flutter/material.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/app_colors.dart';

class SongsTab extends StatelessWidget {
  const SongsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.ko7le,
        appBar: AppBar(
          toolbarHeight: 15,
          backgroundColor: AppColors.ko7le,
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorColor: AppColors.primary,
              dividerHeight: 0,
              padding: const EdgeInsets.only(
                bottom: 15,
              ),
              labelStyle: const TextStyle(
                fontFamily: 'Circular Std',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: AppColors.primary,
              ),
              unselectedLabelStyle: TextStyle(
                fontFamily: 'Circular Std',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: AppColors.white.withOpacity(0.8),
              ),
              tabs: const [
                Tab(
                  text: "All Songs",
                ),
                Tab(
                  text: "Playlists",
                ),
                Tab(
                  text: "Albums",
                ),
                Tab(
                  text: "Artists",
                ),
                Tab(
                  text: "Genres",
                ),
              ]),
        ),
        body: TabBarView(children: [
          buildAllSongsTab(),
          buildAPlaylistsTab(context),
          buildAlbumsTab(context),
          buildArtistsTab(),
          buildGenresTab(context),
        ]),
      ),
    );
  }

  buildAllSongsTab() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => buildSongWidget(context),
    );
  }

  buildSongWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                child: Image.asset(
                  AppAssets.test3,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Do you feel lonelyness",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Marc Anthony",
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
              IconButton(
                  onPressed: () {}, icon: Image.asset(AppAssets.playIcon)),
            ],
          ),
          Divider(
            color: AppColors.white.withOpacity(0.07),
            thickness: 2,
            indent: MediaQuery.sizeOf(context).width * 0.14,
          ),
        ],
      ),
    );
  }

  buildAPlaylistsTab(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            children: [
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppAssets.pl1,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: AppColors.white,
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "My Top Tracks",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                "100 Song",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppAssets.pl2,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: AppColors.white,
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Latest Added",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                "323 Songs",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppAssets.pl3,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: AppColors.white,
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "History",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                "450 Songs",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        AppAssets.pl4,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_circle,
                              color: AppColors.white,
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Favourites",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                "966 Songs",
                                style: TextStyle(
                                  fontFamily: 'Circular Std',
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.white.withOpacity(0.8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "My Playlists",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 15,
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
                  itemBuilder: (context, index) =>
                      buildMyPlayListWidget(context),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: FloatingActionButton(
              backgroundColor: AppColors.fb,
              shape: const CircleBorder(),
              foregroundColor: AppColors.accent,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }

  buildMyPlayListWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppAssets.test4,
              height: MediaQuery.sizeOf(context).height * 0.12,
              width: MediaQuery.sizeOf(context).width * 0.25,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Rihanna Coll. .",
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: AppColors.white.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }

  buildAlbumsTab(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.8,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb1,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "History",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Michael Jackson",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb2,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Thriller",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Michael Jackson",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb3,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "It Won't Be Soon. .",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Maroon 5",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb4,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "I Am... Yours",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Beyonce",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb5,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Breakin' Dishes",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Rihanna",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.45,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.alb6,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Queen II",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white,
                    ),
                  ),
                  const Spacer(),
                  PopupMenuButton(
                    color: AppColors.darkGrey,
                    padding: const EdgeInsets.all(0),
                    menuPadding: const EdgeInsets.all(0),
                    iconSize: 22,
                    iconColor: AppColors.white,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Play next",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playing queue",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Add to playlist...",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Rename",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Tag editor",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Go to artist",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Delete from device",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                        PopupMenuItem(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "Share",
                              style: TextStyle(
                                fontFamily: 'Circular Std',
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.white,
                              ),
                            )),
                      ];
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Queen",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "• 10 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildArtistsTab() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => buildArtistWidget(context),
    );
  }

  buildArtistWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: AppColors.ko7le,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.24,
            height: MediaQuery.sizeOf(context).height * 0.12,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.test6,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Bebe Rexha",
                style: TextStyle(
                  fontFamily: 'Circular Std',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "2 Albums",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.offWhite,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "• 17 Songs",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: AppColors.offWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          PopupMenuButton(
            color: AppColors.darkGrey,
            padding: const EdgeInsets.all(0),
            menuPadding: const EdgeInsets.all(0),
            iconSize: 28,
            iconColor: AppColors.white,
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Play",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Play next",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Add to playing queue",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Add to playlist...",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Rename",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Tag editor",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Go to artist",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Delete from device",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
                PopupMenuItem(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    child: const Text(
                      "Share",
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: AppColors.white,
                      ),
                    )),
              ];
            },
          ),
        ],
      ),
    );
  }

  buildGenresTab(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.33,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g1,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g2,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g3,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g4,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g5,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g6,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g7,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.g8,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
