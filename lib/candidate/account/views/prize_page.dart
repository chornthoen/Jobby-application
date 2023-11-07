import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';

class PrizePage extends StatefulWidget {
  const PrizePage({super.key});

  static const String routePath = '/prize_page';

  @override
  State<PrizePage> createState() => _PrizePageState();
}

class _PrizePageState extends State<PrizePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Prize'),
      backgroundColor: AppColors.kBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.sm,
          ),
          child: Column(
            children: [
              const TextCustom(text: 'Award’s name'),
              const SizedBox(height: AppSpacing.sm),
              const CustomTextFieldForms(
                hintText: 'Award’s name',
              ),
              const SizedBox(height: AppSpacing.lg),
              const TextCustom(text: 'Organizes', star: false),
              const SizedBox(height: AppSpacing.sm),
              const CustomTextFieldForms(
                hintText: 'Organizes',
              ),
              const SizedBox(height: AppSpacing.lg),
              const TextCustom(
                text: 'Award’s year',
              ),
              const SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(
                hintText: 'Title',
                suffixIcon: PhosphorIcons.calendar_blank,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: AppSpacing.lg,
          right: AppSpacing.lg,
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        margin: const EdgeInsets.only(bottom: AppSpacing.xlg),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Save',
          onPressed: () {
            context.pop(context);
          },
        ),
      ),
    );
  }
}
