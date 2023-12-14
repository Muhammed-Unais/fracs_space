import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class SocialMediaLoginButton extends StatelessWidget {
  const SocialMediaLoginButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height * 0.06,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sign in with Google",
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