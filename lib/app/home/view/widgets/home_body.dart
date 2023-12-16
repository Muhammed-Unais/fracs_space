import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/view/widgets/home_featured_cites.dart';
import 'package:fracs_space/app/home/view/widgets/home_hot_prop.dart';
import 'package:fracs_space/app/home/view/widgets/home_popular_prop.dart';
import 'package:fracs_space/app/properties_details/view/properties_screen.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.size,
    required this.popularProp,
    required this.featuredCities,
    required this.hotProp,
  });

  final Size size;
  final List<Map<String, String>>? popularProp;
  final List<Map<String, String>>? featuredCities;
  final List<Map<String, String>>? hotProp;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppLightColors.lightBackground,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(26),
          topRight: Radius.circular(26),
        ),
      ),
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.2,
              child: HomePopularProp(
                popularProp: popularProp,
                size: size,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Featured cities",
              style: MobileTypography.titleLarge.copyWith(
                color: AppLightColors.lightPrimaryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            HomeFeaturedCities(
              size: size,
              featuredCities: featuredCities,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot properties",
                  style: MobileTypography.titleLarge.copyWith(
                    color: AppLightColors.lightPrimaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "View more",
                  style: MobileTypography.titleMedium.copyWith(
                    color: AppLightColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PropertiesScreen();
                    },
                  ),
                );
              },
              child: HomeHotProp(size: size, hotProp: hotProp),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot properties",
                  style: MobileTypography.titleLarge.copyWith(
                    color: AppLightColors.lightPrimaryColor,
                  ),
                ),
                Text(
                  "View more",
                  style: MobileTypography.titleMedium.copyWith(
                    color: AppLightColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            HomeHotProp(size: size, hotProp: hotProp),
          ],
        ),
      ),
    );
  }
}
