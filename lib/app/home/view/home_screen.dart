import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/app/home/view/widgets/home_featured_cites.dart';
import 'package:fracs_space/app/home/view/widgets/home_headers.dart';
import 'package:fracs_space/app/home/view/widgets/home_hot_prop.dart';
import 'package:fracs_space/app/home/view/widgets/home_popular_prop.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final popularProp = HomeModel.popularProp["data"];
    final featuredCities = HomeModel.featuredCities["data"];
    final hotProp = HomeModel.hotProperties["data"];
    return Scaffold(
      body: Scaffold(
        backgroundColor: AppLightColors.lightPrimaryColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [HomeHeaders(size: size)];
            },
            body: Container(
              decoration: BoxDecoration(
                color: AppLightColors.lightBackground,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
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
                    const SizedBox(height: 20),
                    Text(
                      "Featured cities",
                      style: MobileTypography.titleLarge.copyWith(
                        color: AppLightColors.lightPrimaryColor,
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
                    const SizedBox(height: 20),
                    HomeHotProp(size: size, hotProp: hotProp),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

