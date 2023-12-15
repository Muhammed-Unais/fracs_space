import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final popularCities = HomeModel.featuredCities["data"];
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
          "Search",
          style: MobileTypography.headlineMedium.copyWith(
            letterSpacing: 0.5,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.only(
                left: 25,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: MobileTypography.titleMedium.copyWith(
                    letterSpacing: 0.5,
                  ),
                  suffixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.navigation_outlined,
                  size: 20,
                  color: AppLightColors.lightPrimaryColor,
                ),
                const SizedBox(width: 5),
                Text(
                  "Search Nearest Properties",
                  style: MobileTypography.titleMedium.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppLightColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "LAST SEARCH",
              style: MobileTypography.titleLarge.copyWith(
                letterSpacing: 0.5,
              ),
            ),
            const SizedBox(height: 6),
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: Icon(
                Icons.search,
                size: 20,
                color: AppLightColors.lightPrimaryColor,
              ),
              title: Text(
                "Bali",
                style: MobileTypography.headlineSmall.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3 Bedroom",
                    style: MobileTypography.bodyLarge,
                  ),
                  Text(
                    "3 Bathroom",
                    style: MobileTypography.bodyLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "POPULAR CITIES",
              style: MobileTypography.titleLarge.copyWith(
                letterSpacing: 0.5,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: popularCities?.length,
                itemBuilder: (context, index) {
                  final cityName = popularCities?[index]["name"];

                  return ListTile(
                    shape: const Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.5,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(0),
                    leading: Icon(
                      Icons.star_outline_outlined,
                      size: 22,
                      color: AppLightColors.lightPrimaryColor,
                    ),
                    title: Text(
                      cityName!,
                      style: MobileTypography.headlineSmall.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    subtitle: Text(
                      "(${index + 1}0 property)",
                      style: MobileTypography.bodyLarge,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
