import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fracs_space/app/bottom_nav_bar/view_model/bottom_bar_view_model.dart';
import 'package:fracs_space/app/favorites/view/favorites_screen.dart';
import 'package:fracs_space/app/home/view/home_screen.dart';
import 'package:fracs_space/app/profile/view/profile_view.dart';
import 'package:fracs_space/app/search/view/search_view.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  List<Widget> screens1 = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  List<String> screens = ["Home", "Search", "Favorites", "Profile  "];
  List<IconData> icons = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.favorite_border_outlined,
    Icons.person_outline_sharp
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBody: true,
        body: screens1[currentIndex],
        backgroundColor: AppLightColors.lightBackground,
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(size.width * 0.04),
          height: size.width * 0.15,
          decoration: BoxDecoration(
            color: AppLightColors.lightSeedColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? size.width * 0.32
                        : size.width * 0.18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? size.width * .12 : 0,
                      width: index == currentIndex ? size.width * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.white
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? size.width * .31
                        : size.width * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                                  index == currentIndex ? size.width * 0.13 : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex ? screens[index] : "",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width:
                                  index == currentIndex ? size.width * .03 : 20,
                            ),
                            Icon(
                              icons[index],
                              size: 20,
                              color: index == currentIndex
                                  ? AppLightColors.lightPrimaryColor
                                  : AppLightColors.lightBackground,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )

        //  BottomNavigationBar(
        //   onTap: (value) {
        //     bottombarProvider.setBottomBarCurrentScreen(value);
        //   },
        //   currentIndex: 0,
        //   iconSize: 24,
        //   showSelectedLabels: true,
        //   selectedLabelStyle: MobileTypography.titleSmall.copyWith(
        //     color: AppLightColors.lightPrimaryColor,
        //     fontSize: 12,
        //     fontWeight: FontWeight.w500,
        //   ),
        //   unselectedLabelStyle: MobileTypography.titleSmall.copyWith(
        //     color: AppLightColors.lightSecondaryColor,
        //     fontSize: 12,
        //     fontWeight: FontWeight.w500,
        //   ),
        //   type: BottomNavigationBarType.fixed,
        //   showUnselectedLabels: true,
        //   backgroundColor: AppLightColors.lightSeedColor,
        //   elevation: 10,
        //   selectedItemColor: AppLightColors.lightPrimaryColor,
        //   unselectedItemColor: Colors.grey,
        //   items: <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //       label: "Home",
        //       icon: Icon(
        //         color: bottombarProvider.currentIndex == 0
        //             ? AppLightColors.lightPrimaryColor
        //             : Colors.grey,
        //         Icons.home,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Search",
        //       icon: Icon(
        //         color: bottombarProvider.currentIndex == 1
        //             ? AppLightColors.lightPrimaryColor
        //             : Colors.grey,
        //         Icons.search,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Favorites",
        //       icon: Icon(
        //         color: bottombarProvider.currentIndex == 2
        //             ? AppLightColors.lightPrimaryColor
        //             : Colors.grey,
        //         Icons.favorite,
        //       ),
        //     ),
        //     BottomNavigationBarItem(
        //       label: "Profile",
        //       icon: Icon(
        //         color: bottombarProvider.currentIndex == 3
        //             ? AppLightColors.lightPrimaryColor
        //             : Colors.grey,
        //         Icons.person_2_outlined,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}