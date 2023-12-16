import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/res/widgets/invisible_expander_header.dart';

class HomeAppBarSpaceBar extends StatelessWidget {
  const HomeAppBarSpaceBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      expandedTitleScale: 1,
      centerTitle: false,
      titlePadding: const EdgeInsets.only(
        right: 16,
        left: 16,
        bottom: 30,
      ),
      background: ColoredBox(color: AppLightColors.lightPrimaryColor),
      title: InvisibleExpandedHeader(
        child: SizedBox(
          height: size.height * 0.12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hey, ',
                      style: MobileTypography.headlineLarge.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppLightColors.lightBackground,
                      ),
                    ),
                    TextSpan(
                      text: "Ram ",
                      style: MobileTypography.headlineLarge.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 22,
                        color: AppLightColors.lightBackground,
                      ),
                    ),
                    TextSpan(
                      text: "Let's start exploring",
                      style: MobileTypography.headlineLarge.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: AppLightColors.lightBackground,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              // const SizedBox(height: 16),
              Container(
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: AppLightColors.lightBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Kochi",
                              style: MobileTypography.labelLarge.copyWith(
                                color: AppLightColors.lightOnBackground,
                              ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}