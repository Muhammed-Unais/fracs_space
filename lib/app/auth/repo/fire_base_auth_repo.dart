import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/otp_verfication/view/otp_screen.dart';

class FirebaseAuthRepo {
  final FirebaseAuth auth;

  FirebaseAuthRepo(this.auth);

  Future<void> signinWithPhone(BuildContext context, String phoneNumber) async {
    try {
      auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          await auth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (FirebaseAuthException error) {
          log(error.message!);
          throw Exception(error.message);
        },
        codeSent: (String verificationId, int? forceResendingToken) {
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
      log(e.toString());
      // Utils.showSnackBar(
      //   context: context,
      //   content: e.message ?? "Unknown Error",
      // );
    }
  }

  void verfiyOTP(
      BuildContext context, String userOtp, String verficationId) async {
    // bool isValidate = false;
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verficationId, smsCode: userOtp);
      await auth.signInWithCredential(phoneAuthCredential).then((value) {});
      // ignore: use_build_context_synchronously
      // Navigator.pushNamedAndRemoveUntil(
      //     context, RoutesName.userInformationScreen, (route) => false);
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      // Utils.showSnackBar(
      //   context: context,
      //   content: e.message ?? "Unknown Error",
      // );
    }
  }
}
