import 'package:flutter/material.dart';

import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/theme/custom_text_style.dart';

class CustomTextFieldForms extends StatefulWidget {
  const CustomTextFieldForms({
    required this.hintText,
    super.key,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
    this.enable = true,
    this.prefixIcon,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.onChange,
    this.onPressed,
    this.prefixText,
    this.maxLines = 1,
    this.minLines = 1,
    this.onTap,
  });

  final String hintText;
  final IconData? suffixIcon;
  final bool? obscureText;
  final bool enable;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final String? Function(String?)? onChange;
  final VoidCallback? onPressed;
  final String? prefixText;
  final int? maxLines;
  final int? minLines;
  final VoidCallback? onTap;

  @override
  State<CustomTextFieldForms> createState() => _CustomTextFieldFormsState();
}

class _CustomTextFieldFormsState extends State<CustomTextFieldForms> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      onChanged: widget.onChange,
      obscureText: widget.obscureText!,
      enabled: widget.enable,
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      style: CustomTextStyles.titleMediumRegularBlack,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: widget.hintText,
        prefixText: widget.prefixText,
        prefixStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.kGreyColor,
        ),
        hintStyle: CustomTextStyles.titleMediumGray500,
        suffixIcon: IconButton(
          splashRadius: AppSpacing.xlg,
          onPressed: widget.onPressed,
          icon: Icon(
            widget.suffixIcon,
            size: AppSpacing.xlg,
          ),
        ),
        prefixIcon: widget.prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppSpacing.lg,
          horizontal: AppSpacing.lg,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          borderSide: const BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          borderSide: const BorderSide(color: AppColors.kColorGray300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.sm),
          borderSide:  const BorderSide(color: AppColors.kColorGray400),
        ),
        filled: true,
        fillColor: AppColors.kBackgroundColor,
      ),
    );
  }
}
