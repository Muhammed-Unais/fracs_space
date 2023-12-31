import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeHotProp extends StatelessWidget {
  const HomeHotProp({
    super.key,
    required this.size,
    required this.hotProp,
  });

  final Size size;
  final List<Map<String, String>>? hotProp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          final name = hotProp?[index]["name"];
          final image = hotProp?[index]["image"];
          final sqft = hotProp?[index]["sqft"];
          final availabefrac = hotProp?[index]["availabe_frac"];
          final fracprice = hotProp?[index]["frac_price"];
          return Container(
            margin: const EdgeInsets.only(right: 5),
            width: size.width * 0.7,
            child: Card(
              elevation: 4,
              surfaceTintColor: AppLightColors.lightBackground,
              color: AppLightColors.lightBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Container(
                    //   width: size.width * 0.32,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     image: DecorationImage(
                    //       image: NetworkImage(image!),
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: FancyShimmerImage(
                        imageUrl: image!,
                        width: size.width * 0.32,
                        boxFit: BoxFit.cover,
                        errorWidget: Image.asset(
                          "assets/images/no_image.jpg",
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name!,
                            style: MobileTypography.titleMedium.copyWith(
                              color: AppLightColors.lightPrimaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                          ),
                          Text(
                            sqft!,
                            style: MobileTypography.titleSmall.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "Avialable Frac $availabefrac",
                            style: MobileTypography.titleSmall.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Flexible(
                            child: Text(
                              "\$$fracprice",
                              style: MobileTypography.headlineLarge.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
