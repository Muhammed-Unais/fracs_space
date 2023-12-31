import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';

class Utils {
  static showSnackBar(
      {required BuildContext context, required String content}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          side: BorderSide(
            style: BorderStyle.solid,
            color: Colors.white,
            width: 0.2,
          ),
        ),
        content: Text(
          content,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: AppLightColors.lightSeedColor,
      ),
    );
  }
}
