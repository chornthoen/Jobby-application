import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:jobby_application/shared/colors/app_color.dart';
import 'package:jobby_application/shared/widgets/button_action.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';
import 'package:jobby_application/shared/widgets/text_custom.dart';
import 'package:jobby_application/shared/widgets/text_form_field.dart';

class MemberEmPage extends StatefulWidget {
  const MemberEmPage({Key? key}) : super(key: key);

  static const String routePath = '/member_em_page';

  @override
  State<MemberEmPage> createState() => _MemberEmPageState();
}

class _MemberEmPageState extends State<MemberEmPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: const CustomAppBar(title: 'Member'),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ItemAddMember(),
            TextButton(
              onPressed: (){},
              child: const Text(
                'Add member +',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: ButtonAction(
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
        Expanded(
          child: Column(
            children: const [
              TextCustom(text: 'Email'),
              SizedBox(height: 10),
              TextFieldForms(hintText: 'Email'),
            ],
          ),
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextCustom(text: 'Role'),
                  Icon(
                    PhosphorIcons.trash,
                    color: AppColors.kRedColor,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const TextFieldForms(hintText: 'Role'),
            ],
          ),
        ),
      ],
    );
  }
}
