
import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeLocationNotificationAndProfile extends StatelessWidget {
  const HomeLocationNotificationAndProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: AppLightColors.lightBackground,
              borderRadius: BorderRadius.circular(40),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined),
                    const SizedBox(width: 5),
                    Text(
                      "Kochi",
                      style: MobileTypography.labelLarge,
                    )
                  ],
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                  child: const Icon(
                    size: 16,
                    Icons.more_vert_outlined,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppLightColors.lightBackground,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.notifications_none_sharp),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppLightColors.lightBackground,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
