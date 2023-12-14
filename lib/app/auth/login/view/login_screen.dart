import 'package:flutter/material.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/res/widgets/cusotm_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Hi",
                style: MobileTypography.displayLarge.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 2,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Welcome To",
                style: MobileTypography.displayLarge.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 1.5,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "FRACSPACE",
                style: MobileTypography.displayMedium.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                  color: AppLightColors.lightPrimaryColor,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              CustomTextField(
                labelText: "Enter Phone Number",
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 12,
                  ),
                  child: Text(
                    "+91",
                    style: MobileTypography.labelLarge.copyWith(
                      fontSize: 16,
                      color: AppLightColors.lightSecondaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              SizedBox(
                height: size.height * 0.06,
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Send OTP",
                    style: MobileTypography.titleMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppLightColors.lightBackground,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.04),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      "Quick Login Options",
                      style: MobileTypography.bodySmall.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppLightColors.lightOnBackground,
                      ),
                    ),
                  ),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: size.height * 0.04),
              Container(
                alignment: Alignment.center,
                height: size.height * 0.06,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign in with Google",
                      style: MobileTypography.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppLightColors.lightOnBackground,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
