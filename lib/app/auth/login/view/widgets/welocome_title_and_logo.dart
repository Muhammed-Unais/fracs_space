import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class WelcomeTitleandLogo extends StatelessWidget {
  const WelcomeTitleandLogo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi",
            style: MobileTypography.displayLarge.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Welcome To",
            style: MobileTypography.displayLarge.copyWith(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              letterSpacing: 1.5,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "FRACSPACE",
            style: MobileTypography.displayMedium.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 32,
              color: AppLightColors.lightPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
