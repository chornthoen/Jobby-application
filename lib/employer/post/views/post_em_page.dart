
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/employer/main/views/main_em.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class PostEmployerPage extends StatefulWidget {
  const PostEmployerPage({Key? key}) : super(key: key);

  static const String routePath = '/post_employer';

  @override
  State<PostEmployerPage> createState() => _PostEmployerPageState();
}

class _PostEmployerPageState extends State<PostEmployerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Post',
        onBackTap: () {
          context.push(MainEmployerPage.routePath);
        },
      ),
      body: const Center(
        child: Text('Post'),
      ),
    );
  }
}
