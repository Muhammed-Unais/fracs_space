import 'package:flutter/material.dart';
import 'package:fracs_space/app/auth/view_model/auth_view_model.dart';
import 'package:fracs_space/common/res/styles/app_colors.dart';
import 'package:fracs_space/common/res/styles/mobile_typography.dart';
import 'package:fracs_space/common/res/widgets/cusotm_text_field.dart';
import 'package:provider/provider.dart';

GlobalKey<FormState> loginformKey = GlobalKey<FormState>();

class FormFieldAndButton extends StatefulWidget {
  const FormFieldAndButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<FormFieldAndButton> createState() => _FormFieldAndButtonState();
}

class _FormFieldAndButtonState extends State<FormFieldAndButton> {
  final _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginformKey,
      child: Column(
        children: [
          CustomTextField(
            controller: _phoneNumberController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a phone number";
              }
              return null;
            },
            onChanged: (value) {
              if (value.isNotEmpty) {
                loginformKey.currentState!.validate();
              }
            },
            labelText: "Enter Phone Number",
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 13.5,
              ),
              child: Text(
                "+ 91",
                style: MobileTypography.labelLarge.copyWith(
                  fontSize: 16,
                  color: AppLightColors.lightSecondaryColor,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: widget.size.height * 0.04),
          SizedBox(
            height: widget.size.height * 0.06,
            width: widget.size.width,
            child: ElevatedButton(
              onPressed: () {
                var phoneNumber = _phoneNumberController.text.trim();
                if (loginformKey.currentState!.validate()) {
                  final authProvider = context.read<AuthViewModel>();
                  authProvider.signinWithPhone(context, "+91$phoneNumber");
                }
              },
              child: Text(
                "Send OTP",
                style: MobileTypography.titleMedium.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppLightColors.lightBackground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
