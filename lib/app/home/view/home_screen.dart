import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/app/home/view/widgets/home_headers.dart';
import 'package:fracs_space/app/home/view/widgets/home_popular_prop.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final popularProp = HomeModel.popularProp["data"];
    return Scaffold(
      body: Scaffold(
        backgroundColor: AppLightColors.lightPrimaryColor,
        body: SafeArea(
          child: NestedScrollView(
            floatHeaderSlivers: true,
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
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                    ),
                    height: size.height * 0.2,
                    child: HomePopularProp(
                      popularProp: popularProp,
                      size: size,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
