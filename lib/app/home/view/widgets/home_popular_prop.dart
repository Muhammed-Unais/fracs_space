import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomePopularProp extends StatelessWidget {
  const HomePopularProp({
    super.key,
    required this.popularProp,
    required this.size,
  });

  final List<Map<String, String>>? popularProp;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: popularProp?.length,
      itemBuilder: (context, index) {
        final name = popularProp![index]["name"];
        final image = popularProp?[index]["image"];
        final place = popularProp?[index]["place"];
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: FancyShimmerImage(
                  imageUrl: image!,
                  width: size.width * 0.7,
                  boxFit: BoxFit.cover,
                  errorWidget: Image.asset(
                    "assets/images/no_image.jpg",
                  ),
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
                          style: MobileTypography.titleMedium.copyWith(
                            color: AppLightColors.lightBackground,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          place!,
                          style: MobileTypography.titleMedium.copyWith(
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
        );
        // Container(
        //   margin: const EdgeInsets.only(right: 10),
        //   width: size.width * 0.7,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     image: DecorationImage(
        //       image: NetworkImage(
        //         image!,
        //       ),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   child: Align(
        //     alignment: Alignment.bottomLeft,
        // child: SizedBox(
        //   height: 60,
        //   child: Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.only(
        //           left: 12,
        //           bottom: 12,
        //         ),
        //         child: VerticalDivider(
        //           thickness: 3,
        //           color: Colors.blue.shade300,
        //         ),
        //       ),
        //       Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Text(
        //             name!,
        //             style: MobileTypography.titleMedium.copyWith(
        //               color: AppLightColors.lightBackground,
        //               fontWeight: FontWeight.w800,
        //             ),
        //           ),
        //           Text(
        //             place!,
        //             style: MobileTypography.titleMedium.copyWith(
        //               color: AppLightColors.lightBackground,
        //             ),
        //           ),
        //         ],
        //       )
        //     ],
        //   ),
        // ),
        //   ),
        // );
      },
    );
  }
}
