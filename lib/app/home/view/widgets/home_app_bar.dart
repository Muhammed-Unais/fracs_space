import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/view/widgets/home_app_bar_space_bar.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppLightColors.lightBackground,
      surfaceTintColor: AppLightColors.lightBackground,
      pinned: true,
      floating: true,
      expandedHeight: size.height * 0.24,
      leading: Container(
        margin: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          color: AppLightColors.lightBackground,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.notifications_none_sharp),
      ),
      title: Text(
        "Fracspace",
        style: MobileTypography.headlineLarge.copyWith(
          fontWeight: FontWeight.w900,
          fontSize: 24,
          color: AppLightColors.lightBackground,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          height: 38,
          width: 38,
          decoration: BoxDecoration(
            color: AppLightColors.lightBackground,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person),
        ),
      ],
      flexibleSpace: HomeAppBarSpaceBar(size: size),
    );
  }
}
