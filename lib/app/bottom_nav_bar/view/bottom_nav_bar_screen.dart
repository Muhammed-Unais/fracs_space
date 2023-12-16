import 'package:flutter/material.dart';
import 'package:fracs_space/app/bottom_nav_bar/view_model/bottom_bar_view_model.dart';
import 'package:fracs_space/app/favorites/view/favorites_screen.dart';
import 'package:fracs_space/app/home/view/home_screen.dart';
import 'package:fracs_space/app/profile/view/profile_view.dart';
import 'package:fracs_space/app/search/view/search_view.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:provider/provider.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<BottomBarViewModel>(
        builder: (context, bottombarProvider, _) {
      return Scaffold(
        body: screens[bottombarProvider.currentIndex],
        backgroundColor: AppLightColors.lightBackground,
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(size.width * 0.05),
          height: size.width * 0.155,
          decoration: BoxDecoration(
            color: AppLightColors.lightSeedColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              bottombarProvider.setBottomBarCurrentScreen(value);
            },
            currentIndex: 0,
            iconSize: 24,
            showSelectedLabels: true,
            selectedLabelStyle: MobileTypography.titleSmall.copyWith(
              color: AppLightColors.lightPrimaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: MobileTypography.titleSmall.copyWith(
              color: AppLightColors.lightSecondaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            backgroundColor: AppLightColors.lightSeedColor,
            elevation: 10,
            selectedItemColor: AppLightColors.lightPrimaryColor,
            unselectedItemColor: Colors.grey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  color: bottombarProvider.currentIndex == 0
                      ? AppLightColors.lightPrimaryColor
                      : Colors.grey,
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(
                  color: bottombarProvider.currentIndex == 1
                      ? AppLightColors.lightPrimaryColor
                      : Colors.grey,
                  Icons.search,
                ),
              ),
              BottomNavigationBarItem(
                label: "Favorites",
                icon: Icon(
                  color: bottombarProvider.currentIndex == 2
                      ? AppLightColors.lightPrimaryColor
                      : Colors.grey,
                  Icons.favorite,
                ),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(
                  color: bottombarProvider.currentIndex == 3
                      ? AppLightColors.lightPrimaryColor
                      : Colors.grey,
                  Icons.person_2_outlined,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
