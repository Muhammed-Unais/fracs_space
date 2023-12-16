import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/utils/user_token.dart';

const profile =
    "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoggedInUser.getUserDetails();
    final size = MediaQuery.of(context).size;
    final popularProp = HomeModel.popularProp["data"];

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        surfaceTintColor: AppLightColors.lightBackground,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 0.5,
          ),
        ),
        centerTitle: false,
        title: Text(
          "Profile",
          style: MobileTypography.headlineMedium.copyWith(
            letterSpacing: 0.5,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: SizedBox(
                height: size.height * 0.12,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        profile,
                        height: size.height * 0.12,
                        width: size.height * 0.12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Ram",
                            style: MobileTypography.titleLarge,
                          ),
                          Text(
                            LoggedInUser.mobile ?? "no ",
                            style: MobileTypography.titleMedium.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "No of Fracs : 20",
                            style: MobileTypography.titleMedium.copyWith(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "FOLLOWERS",
                      style: MobileTypography.titleLarge.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "150",
                      style: MobileTypography.titleLarge.copyWith(
                        color: AppLightColors.lightPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  children: [
                    Text(
                      "PROPERTIES",
                      style: MobileTypography.titleLarge.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "20",
                      style: MobileTypography.titleLarge.copyWith(
                        color: AppLightColors.lightPrimaryColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "PROPERTIES",
                style: MobileTypography.titleLarge.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppLightColors.lightPrimaryColor,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: popularProp?.length,
              itemBuilder: (context, index) {
                final name = popularProp![index]["name"];
                final image = popularProp[index]["image"];
                final place = popularProp[index]["place"];
                return Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 16),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: FancyShimmerImage(
                          imageUrl: image!,
                          width: size.width,
                          height: size.height * 0.2,
                          boxFit: BoxFit.cover,
                          errorWidget: Image.asset(
                            "assets/images/no_image.jpg",
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: SizedBox(
                          height: 60,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                  bottom: 12,
                                ),
                                child: VerticalDivider(
                                  thickness: 3,
                                  color: Colors.blue.shade300,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    name!,
                                    style:
                                        MobileTypography.titleMedium.copyWith(
                                      color: AppLightColors.lightBackground,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Text(
                                    place!,
                                    style:
                                        MobileTypography.titleMedium.copyWith(
                                      color: AppLightColors.lightBackground,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
