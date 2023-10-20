import 'package:flutter/material.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    required this.controller,
    required this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      appContext: context,
      length: 6,
      animationType: AnimationType.fade,
      textStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: AppColors.kPrimaryColor,
      ),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(6),
        fieldHeight: 52,
        fieldWidth: 52,
        borderWidth: 1,
        activeBorderWidth: 1,
        inactiveBorderWidth: 1,
        selectedBorderWidth: 1,
        activeFillColor: AppColors.kWhiteColor,
        inactiveFillColor: AppColors.kWhiteColor,
        activeColor: AppColors.kSecondaryColor,
        inactiveColor: AppColors.kSeptenaryColor,
        selectedColor: AppColors.kSeptenaryColor,
        selectedFillColor: AppColors.kWhiteColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
