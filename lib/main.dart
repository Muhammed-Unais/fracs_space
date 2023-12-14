import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/login/view/login_screen.dart';
import 'package:fracs_space/app/auth/view_model/auth_view_model.dart';
import 'package:fracs_space/app/bottom_nav_bar/view_model/bottom_bar_view_model.dart';
import 'package:fracs_space/common/res/styles/app_theme.dart';
import 'package:fracs_space/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => AuthViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => BottomBarViewModel(),
      )
    ],
    child: const MyApp(),
  ));
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
