import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/login/view/login_screen.dart';
import 'package:fracs_space/app/bottom_nav_bar/view/bottom_nav_bar_screen.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/utils/user_token.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  @override
  void initState() {
    isUserLogedIn();
    super.initState();
  }

  void isUserLogedIn() async {
    await Future.delayed(const Duration(seconds: 3));

    await LoggedInUser.getUserDetails();
    if (LoggedInUser.uid != null && LoggedInUser.uid!.isNotEmpty) {
      navigate(true, token: LoggedInUser.uid);
    } else {
      navigate(false);
    }
  }

  void navigate(bool isHome, {String? token}) {
    if (isHome) {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const BottomBarView();
        },
      ));
    } else {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const LoginScreen();
        },
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Fracspace",
          style: MobileTypography.headlineLarge.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: 32,
            color: AppLightColors.lightSeedColor,
          ),
        ),
      ),
    );
  }
}
