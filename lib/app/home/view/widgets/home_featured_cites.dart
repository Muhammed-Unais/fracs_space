import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class HomeFeaturedCities extends StatelessWidget {
  const HomeFeaturedCities({
    super.key,
    required this.size,
    required this.featuredCities,
  });

  final Size size;
  final List<Map<String, String>>? featuredCities;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          final cityName = featuredCities?[index]["name"];
          final image = featuredCities?[index]["image"];
          return Container(
            height: size.height * 0.12,
            width: size.width * 0.17,
            margin: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.075,
                  width: size.height * 0.075,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image!),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                // ClipOval(
                //   child: FancyShimmerImage(
                //     imageUrl: image!,
                //     height: size.height * 0.075,
                //     width: size.height * 0.075,
                //     boxFit: BoxFit.cover,
                //     errorWidget: Image.asset(
                //       "assets/images/no_image.jpg",
                //     ),
                //   ),
                // ),
                const SizedBox(height: 10),
                Text(
                  cityName!,
                  textAlign: TextAlign.center,
                  style: MobileTypography.bodyMedium,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
