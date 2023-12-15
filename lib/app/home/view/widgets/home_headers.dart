import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/view/widgets/home_location_notification_image.dart';
import 'package:fracs_space/app/home/view/widgets/home_user_name_and_wish.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class HomeHeaders extends StatelessWidget {
  const HomeHeaders({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: size.width,
        height: size.height * 0.25,
        color: AppLightColors.lightPrimaryColor,
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeLocationNotificationAndProfile(),
            SizedBox(height: size.height * 0.05),
            const HomeUserNameAndWish(),
          ],
        ),
      ),
    );
  }
}
