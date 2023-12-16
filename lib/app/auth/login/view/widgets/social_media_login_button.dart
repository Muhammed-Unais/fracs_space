import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class SocialMediaLoginButton extends StatelessWidget {
  const SocialMediaLoginButton({
    super.key,
    required this.size,
    required this.media,
    required this.icon,
    required this.iconsize,
  });

  final Size size;
  final String media;
  final String icon;
  final double iconsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: iconsize,
            width: iconsize,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Sign in with $media",
            style: MobileTypography.titleMedium.copyWith(
              fontWeight: FontWeight.w500,
              color: AppLightColors.lightOnBackground,
            ),
          )
        ],
      ),
    );
  }
}
