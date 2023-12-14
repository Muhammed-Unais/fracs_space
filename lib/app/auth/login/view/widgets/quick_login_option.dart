import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class QuickLoginOptionWidget extends StatelessWidget {
  const QuickLoginOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Text(
            "Quick Login Options",
            style: MobileTypography.bodySmall.copyWith(
              fontWeight: FontWeight.w400,
              color: AppLightColors.lightOnBackground,
            ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}