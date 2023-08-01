import 'package:flutter/material.dart';

import '../colors/app_color.dart';

class TextFieldForms extends StatefulWidget {
  const TextFieldForms({
    super.key,
    required this.hintText,
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

  @override
  State<TextFieldForms> createState() => _TextFieldFormsState();
}

class _TextFieldFormsState extends State<TextFieldForms> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      onChanged: widget.onChange,
      obscureText: widget.obscureText!,
      enabled: widget.enable,
      validator: widget.validator,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kBlackColor,
          ),
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          prefixText: widget.prefixText,
          prefixStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.kGreyColor,
          ),
          hintStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.kQuinaryColor,
          ),
          suffixIcon: IconButton(
            splashRadius: 24,
            onPressed: widget.onPressed,
            icon: Icon(
              widget.suffixIcon,
              size: 24,
            ),
          ),
          prefixIcon: widget.prefixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.red),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(color: AppColors.kSeptenaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          filled: true,
          fillColor: AppColors.kBackgroundColor,),
    );
  }
}
