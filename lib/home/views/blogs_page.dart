import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jobby_application/home/models/blog_model.dart';
import 'package:jobby_application/home/views/blog_detail_page.dart';
import 'package:jobby_application/home/widgets/item_blog.dart';
import 'package:jobby_application/shared/widgets/custom_app_bar.dart';

class BlogsPage extends StatefulWidget {
  const BlogsPage({super.key});

  static const String routePath = '/blogsPage';

  @override
  State<BlogsPage> createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Blogs'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: listBlog.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final blog = listBlog[index];
            return ItemBlog(
              image: blog.image,
              title: blog.title,
              read: blog.readTime,
              date: blog.date,
              isBookmark: blog.isSaved,
              onPressed: () {
                context.push(BlogDetailPage.routePath);
              },
              onBookmark: () {
                setState(() {
                  blog.isSaved = !blog.isSaved;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
