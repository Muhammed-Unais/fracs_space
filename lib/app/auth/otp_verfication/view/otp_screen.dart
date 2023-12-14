import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/otp_verfication/view/widgets/piput_field.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key, required this.verificationId});

  final String verificationId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                "OTP Verification",
                style: MobileTypography.displayLarge.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  letterSpacing: 2,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              PinputField(verificationId: verificationId),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                height: size.height * 0.06,
                width: size.width,
                child: ElevatedButton(
                  onPressed: () {
      
                  },
                  child: Text(
                    "Verify OTP",
                    style: MobileTypography.titleMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppLightColors.lightBackground,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


