import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/repo/fire_base_auth_repo.dart';

class AuthViewModel extends ChangeNotifier {
  final authRepository = FirebaseAuthRepo(FirebaseAuth.instance);

  Future<void> signinWithPhone(BuildContext context, String phoneNumber) async{
    await authRepository.signinWithPhone(context, phoneNumber);
  }

  void verfiyOTP(BuildContext context, String userOtp, String verificationId) {
    authRepository.verfiyOTP(
      context,
      userOtp,
      verificationId,
    );
  }
}
