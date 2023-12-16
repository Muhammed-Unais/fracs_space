import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/constants/app_fonts.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class Tabbars extends StatelessWidget {
  const Tabbars({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      onTap: (value) {},
      padding: const EdgeInsets.only(left: 20, right: 20),
      labelStyle: TextStyle(
        fontFamily: AppFonts.pangram,
        fontSize: 12,
        color: AppLightColors.lightOnBackground,
        fontWeight: FontWeight.bold,
      ),
      splashBorderRadius: BorderRadius.circular(0),
      labelColor: AppLightColors.lightOnBackground,
      indicatorColor: AppLightColors.lightOnBackground,
      indicatorPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: AppLightColors.lightSecondaryColor,
      tabs: const [
        Tab(
          text: "Overview",
        ),
        Tab(
          text: "Bookings",
        ),
        Tab(
          text: "Guest Book ",
        )
      ],
    );
  }
}
