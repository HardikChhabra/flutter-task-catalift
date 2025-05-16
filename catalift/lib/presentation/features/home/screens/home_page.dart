import 'package:catalift/presentation/features/home/bloc/post_service.dart';
import 'package:catalift/presentation/features/home/widgets/post_component.dart';
import 'package:catalift/presentation/features/home/widgets/search_component.dart';
import 'package:flutter/material.dart';

import '../../../../core/entities/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  final PostService _postService = PostService();

  @override
  Widget build(BuildContext context) {
    List<Post>allPosts = _postService.getAllPosts();
    return Scaffold(
      body: Column(
        children: [
          //Search bar and add icon
          SearchComponent(
            controller: searchController,
          ),
          //Scrollable Posts
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return PostComponent(post: allPosts[index]);
              },
              itemCount: allPosts.length,
            ),
          )
        ],
      ),
    );
  }
}
