import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/login/view/widgets/form_field_and_button.dart';
import 'package:fracs_space/app/auth/login/view/widgets/quick_login_option.dart';
import 'package:fracs_space/app/auth/login/view/widgets/social_media_login_button.dart';
import 'package:fracs_space/app/auth/login/view/widgets/welocome_title_and_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                WelcomeTitleandLogo(size: size),
                SizedBox(height: size.height * 0.05),
                FormFieldAndButton(size: size),
                SizedBox(height: size.height * 0.04),
                const QuickLoginOptionWidget(),
                SizedBox(height: size.height * 0.04),
                SocialMediaLoginButton(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
