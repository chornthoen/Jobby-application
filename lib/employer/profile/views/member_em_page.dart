import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/spacing/app_spacing.dart';
import 'package:jobby_application/shared/widgets/custom_elevated_button.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/custom_text_form_field.dart';

class MemberEmPage extends StatefulWidget {
  const MemberEmPage({super.key});

  static const String routePath = '/member_em_page';

  @override
  State<MemberEmPage> createState() => _MemberEmPageState();
}

class _MemberEmPageState extends State<MemberEmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Member'),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.sm,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ItemAddMember(),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Add member +',
                style: TextStyle(
                  fontSize: AppSpacing.lg,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: CustomElevatedButton(
          isClick: true,
          text: 'Save',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class ItemAddMember extends StatelessWidget {
  const ItemAddMember({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            children: [
              TextCustom(text: 'Email'),
              SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(hintText: 'Email'),
            ],
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(text: 'Role'),
                  Icon(
                    PhosphorIcons.trash,
                    color: AppColors.kRedColor,
                    size: AppSpacing.xlg - 4,
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.sm),
              CustomTextFieldForms(hintText: 'Role'),
            ],
          ),
        ),
      ],
    );
  }
}
