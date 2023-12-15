import 'package:flutter/material.dart';
import 'package:fracs_space/app/favorites/view/widgets/favorite_tab_1.dart';
import 'package:fracs_space/app/home/model/home_model.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/res/widgets/tab_bar_widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hotProp = HomeModel.hotProperties["data"];
    final size = MediaQuery.of(context).size;

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
          "Favorites",
          style: MobileTypography.headlineMedium.copyWith(
            letterSpacing: 0.5,
            fontSize: 22,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            TabbarWidget(
              controller: tabController,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  FavoriteTab1(hotProp: hotProp, size: size),
                  const Center(child: Text("No data"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
