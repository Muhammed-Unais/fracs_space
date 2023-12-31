import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class FavoriteTab1 extends StatelessWidget {
  const FavoriteTab1({
    super.key,
    required this.hotProp,
    required this.size,
  });

  final List<Map<String, String>>? hotProp;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: hotProp?.length,
      itemBuilder: (context, index) {
        final name = hotProp?[index]["name"];
        final image = hotProp?[index]["image"];
        final sqft = hotProp?[index]["sqft"];
        final availabefrac = hotProp?[index]["availabe_frac"];
        final fracprice = hotProp?[index]["frac_price"];
        return Container(
          padding: const EdgeInsets.only(top: 20),
          height: size.height * 0.2,
          child: Card(
            elevation: 4,
            surfaceTintColor: AppLightColors.lightBackground,
            color: AppLightColors.lightBackground,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  // Container(

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
                      width: size.width * 0.4,
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
                            overflow: TextOverflow.ellipsis,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
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
    );
  }
}
