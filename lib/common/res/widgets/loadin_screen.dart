import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class LoadingBar {
  static Widget buttonLoad() =>
      SpinKitWaveSpinner(color: AppLightColors.lightBackground, size: 40);

  static Widget loading() {
    return SpinKitWave(
      size: 30,
      color: AppLightColors.lightPrimaryColor,
    );
  }

  static popUpLoadingBar(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitFadingCube(
                size: 20,
                color: AppLightColors.lightPrimaryColor,
              ),
            ],
          ),
        );
      },
    );
  }

  static offPopLoadingBar(BuildContext context) {
    Navigator.pop(context);
  }
}
