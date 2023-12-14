import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/login/view/login_screen.dart';
import 'package:fracs_space/common/res/styles/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
