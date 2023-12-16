import 'package:flutter/material.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/app/home/view/widgets/home_app_bar.dart';
import 'package:fracs_space/app/home/view/widgets/home_body.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final popularProp = HomeModel.popularProp["data"];
    final featuredCities = HomeModel.featuredCities["data"];
    final hotProp = HomeModel.hotProperties["data"];
    return Scaffold(
      backgroundColor: AppLightColors.lightPrimaryColor,
      body: CustomScrollView(
        slivers: [
          HomeAppBar(size: size),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                HomeBody(
                  size: size,
                  popularProp: popularProp,
                  featuredCities: featuredCities,
                  hotProp: hotProp,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
