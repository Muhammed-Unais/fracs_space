import 'package:flutter/material.dart';
import 'package:fracs_space/app/properties_details/view/widgets/tabbar.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class PropertiesScreen extends StatefulWidget {
  const PropertiesScreen({super.key});

  @override
  State<PropertiesScreen> createState() => _PropertiesScreenState();
}

class _PropertiesScreenState extends State<PropertiesScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Properties Details",
          style: MobileTypography.titleLarge.copyWith(
            fontWeight: FontWeight.w600,
            color: AppLightColors.lightSecondaryColor,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.share_outlined,
              size: 24,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: size.width,
              child: Card(
                surfaceTintColor: AppLightColors.lightBackground,
                elevation: 1,
                child: Center(
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(
                      // top: 5,
                      // bottom: 5,
                      left: 8,
                    ),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/005.jpeg",
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    title: Text(
                      "Dahlia Place",
                      style: MobileTypography.titleMedium.copyWith(),
                    ),
                    subtitle: Text(
                      "Fort Kochi",
                      style: MobileTypography.labelMedium.copyWith(),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "View",
                        style: MobileTypography.labelLarge.copyWith(
                          color: AppLightColors.lightPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Tabbars(tabController: _controller),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: Card(
                          surfaceTintColor: AppLightColors.lightBackground,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Complimentry Stay",
                                  style: MobileTypography.labelLarge.copyWith(
                                    color: AppLightColors.lightPrimaryColor,
                                  ),
                                ),
                                Text(
                                  "7 Days left",
                                  style: MobileTypography.labelLarge.copyWith(
                                    color: AppLightColors.lightPrimaryColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Previous Bookings",
                        style: MobileTypography.labelLarge.copyWith(
                          color: AppLightColors.lightPrimaryColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 120,
                        child: Card(
                          surfaceTintColor: AppLightColors.lightBackground,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date of booking",
                                      style:
                                          MobileTypography.labelLarge.copyWith(
                                        color: AppLightColors.lightPrimaryColor,
                                      ),
                                    ),
                                    Text(
                                      "7 Days left",
                                      style:
                                          MobileTypography.labelLarge.copyWith(
                                        color: AppLightColors.lightPrimaryColor,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Date of booking",
                                      style:
                                          MobileTypography.labelLarge.copyWith(
                                        color: AppLightColors.lightPrimaryColor,
                                      ),
                                    ),
                                    Text(
                                      "7 Days left",
                                      style:
                                          MobileTypography.labelLarge.copyWith(
                                        color: AppLightColors.lightPrimaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text("1"),
                  Text("1"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
