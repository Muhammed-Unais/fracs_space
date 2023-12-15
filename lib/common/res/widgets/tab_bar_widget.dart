import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({
    super.key,
    required this.controller,
  });

  final TabController controller;

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  int currentIndex = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      controllListner(widget.controller.index);
    });
    super.initState();
  }

  void controllListner(int index) {
    currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TabBar(
      indicator: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      labelPadding: const EdgeInsets.all(0),
      controller: widget.controller,
      unselectedLabelColor: AppLightColors.lightPrimaryColor,
      splashBorderRadius: BorderRadius.circular(16),
      splashFactory: NoSplash.splashFactory,
      labelColor: AppLightColors.lightBackground,
      dividerColor: Colors.transparent,
      labelStyle: MobileTypography.titleMedium.copyWith(
        fontWeight: FontWeight.w500,
      ),
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      tabs: [
        Tab(
          child: Container(
            width: size.width * 0.5,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: currentIndex == 0
                  ? AppLightColors.lightPrimaryColor
                  : AppLightColors.lightBackground,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            margin: const EdgeInsets.only(right: 10),
            child: const Center(
              child: Text(
                "Favorites",
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: currentIndex == 1
                  ? AppLightColors.lightPrimaryColor
                  : AppLightColors.lightBackground,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: const Center(
              child: Text(
                "Last Watched",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
