import 'package:catalift/core/entities/post.dart';
import 'package:catalift/core/entities/user.dart';
import 'package:catalift/presentation/features/home/widgets/post_component.dart';
import 'package:flutter/material.dart';

class ScrollableFeedComponent extends StatefulWidget {
  final List<Post> postsList;
  final User user;

  const ScrollableFeedComponent({super.key, required this.postsList, required this.user});

  @override
  State<ScrollableFeedComponent> createState() =>
      _ScrollableFeedComponentState();
}

class _ScrollableFeedComponentState extends State<ScrollableFeedComponent> {
  @override
  Widget build(BuildContext context) {
    if (widget.postsList.isEmpty) {
      return const Center(
        child: Text("No Posts"),
      );
    }
    //to be changed to streamBuilder once data is fetched from a stream
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 16),
        itemCount: widget.postsList.length,
        itemBuilder: (context, index) {
          final post = widget.postsList[index];
          return PostComponent(post: post, user: widget.user);
        },
      ),
    );
  }
}
