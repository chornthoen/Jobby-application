import 'package:flutter/material.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({Key? key}) : super(key: key);

  static const String routePath = '/blogsPage';

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Blogs',
      ),
    );
  }
}
