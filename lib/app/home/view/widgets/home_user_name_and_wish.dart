import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeUserNameAndWish extends StatelessWidget {
  const HomeUserNameAndWish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hey, ',
                style: MobileTypography.headlineLarge.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                  color: AppLightColors.lightBackground,
                ),
              ),
              TextSpan(
                text: 'Ram',
                style: MobileTypography.headlineLarge.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  color: AppLightColors.lightBackground,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          "Let's start exploring",
          style: MobileTypography.headlineLarge.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 28,
            color: AppLightColors.lightBackground,
          ),
        )
      ],
    );
  }
}
