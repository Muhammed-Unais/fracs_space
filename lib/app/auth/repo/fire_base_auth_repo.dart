// ignore_for_file: use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/otp_verfication/view/otp_screen.dart';
import 'package:fracs_space/app/home/view/home_screen.dart';
import 'package:fracs_space/common/res/widgets/loadin_screen.dart';
import 'package:fracs_space/common/utils/user_token.dart';
import 'package:fracs_space/common/utils/utils.dart';

class FirebaseAuthRepo {
  final FirebaseAuth auth;

  FirebaseAuthRepo(this.auth);

  Future<void> signinWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          await auth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (FirebaseAuthException error) {
          throw Exception(error.message);
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          LoadingBar.offPopLoadingBar(context);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return OtpVerificationScreen(verificationId: verificationId);
              },
            ),
          );
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(
        context: context,
        content: e.message ?? "Unknown Error",
      );
    }
  }

  Future<void> verfiyOTP(
      BuildContext context, String userOtp, String verficationId) async {
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verficationId, smsCode: userOtp);
      await auth.signInWithCredential(phoneAuthCredential).then((value) {
        LoggedInUser.profile(value.user?.phoneNumber, value.user?.uid);

        Utils.showSnackBar(
          context: context,
          content: "Login Successful!",
        );

        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomeScreen();
            },
          ),
          (route) => false,
        );
      });
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(
        context: context,
        content: e.message ?? "Unknown Error",
      );
    }
  }
}
