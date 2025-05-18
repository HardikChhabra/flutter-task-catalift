import 'package:catalift/core/entities/user.dart';
import 'package:catalift/presentation/features/home/bloc/post_service.dart';
import 'package:catalift/presentation/features/home/widgets/post_component.dart';
import 'package:catalift/presentation/features/home/widgets/scrollable_feed_component.dart';
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
    List<Post> allPosts = _postService.getAllPosts();
    Post post_1 = allPosts[0];
    User userPost1 = User(
        userId: "1",
        name: "Akhilesh Yadav",
        email: "test@gmail.com",
        role: "Founder",
        companyName: "Google",
        profileURL: "");
    return Column(
      children: [
        SearchComponent(
          controller: searchController,
          onSearch: (query) {},
        ),
        ScrollableFeedComponent(
          postsList: allPosts,
          user: userPost1,
        ),
        //PostComponent(
        //  post: post_1,
        //  user: userPost1,
        //)
      ],
    );
  }
}
