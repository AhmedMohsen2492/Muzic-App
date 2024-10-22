import 'package:flutter/material.dart';
import 'package:muzic/ui/screens/main/tabs/home_tab.dart';
import 'package:muzic/ui/screens/main/tabs/settings_tab.dart';
import 'package:muzic/ui/screens/main/tabs/songs_tab.dart';
import 'package:muzic/ui/utils/app_assets.dart';
import 'package:muzic/ui/utils/app_colors.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "MainScreen";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<String> title = ["Home", "Songs", "Settings"];
  List<Widget> tabs = [const HomeTab(), const SongsTab(), const SettingsTab()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ko7le,
      body: tabs[currentIndex],
      drawer: Drawer(
        width: MediaQuery.sizeOf(context).width * 0.75,
        backgroundColor: AppColors.drawerColor,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    AppAssets.splashIcon,
                    height: MediaQuery.sizeOf(context).height * 0.1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Muzic",
                    style: TextStyle(
                      fontFamily: 'Circular Std',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: AppColors.white.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "328",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "Songs",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "52",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "Albums",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "87",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "Artists",
                            style: TextStyle(
                              fontFamily: 'Circular Std',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: AppColors.white.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff10121e),
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.themesIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Themes",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.ringtoneCutterIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Ringtone Cutter",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.sleepTimerIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Sleep timer",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.equliserIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Equliser",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.driveModeIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Drive Mode",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.hiddenFoldersIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Hidden Folders",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(18),
                        color: AppColors.darkKo7le,
                        child: Row(
                          children: [
                            Image.asset(AppAssets.scanMediaIcon),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Scan Media",
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
                      const Divider(
                        color: AppColors.drawerColor,
                        height: 2,
                        thickness: 1.5,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.ko7le,
        centerTitle: true,
        title: Text(
          title[currentIndex],
          style: TextStyle(
            fontFamily: 'Circular Std',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: AppColors.white.withOpacity(0.8),
          ),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Image.asset(AppAssets.drawerIcon),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: [
          currentIndex != 2
              ? IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: AppColors.white.withOpacity(0.5),
                    size: 30,
                  ),
                )
              : const SizedBox(),
        ],
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            backgroundColor: AppColors.bNBarColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.lightGrey,
            elevation: 10,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            selectedIconTheme: const IconThemeData(
              color: AppColors.primary,
            ),
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
            ),
            selectedLabelStyle: const TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 12,
            ),
            items: [
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.homeIcon,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.homeIcon,
                    color: AppColors.lightGrey,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.songsIcon,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.songsIcon,
                    color: AppColors.lightGrey,
                  ),
                ),
                label: "Songs",
              ),
              BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.settingsIcon,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    AppAssets.settingsIcon,
                    color: AppColors.lightGrey,
                  ),
                ),
                label: "Settings",
              ),
            ]),
      ),
    );
  }
}
