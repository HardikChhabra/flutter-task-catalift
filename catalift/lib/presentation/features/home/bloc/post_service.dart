import 'package:catalift/core/entities/post.dart';

class PostService {
  //C
  Future<void> addPost() async {}

  //C
  //will be changed to a stream once backend is integrated
  List<Post> getAllPosts() {
    Post post_1 = Post(
        postId: "1",
        userId: "1",
        tags: ['tag1', 'tag2'],
        content: "The Briggs–Rauscher Reaction: A Mesmerizing Chemical Dance 🌈\n\nThis captivating process uses hydrogen peroxide, potassium iodate, malonic acid, manganese sulfate, and starch.\nIodine and iodate ions interact to form compounds that shift the solution's color, while starch amplifies the blue color before it breaks down and starts again.💡\n\nFollow @Science for more",
        images: [
          "https://picsum.photos/200/300"
        ],
        timeStamp: "18-05-2025",
        comments: 50,
        stars: 1502,
        isEdited: true);
    Post post_2 = Post(
        postId: "2",
        userId: "2",
        tags: ['tag1', 'tag2'],
        content: "The Briggs–Rauscher Reaction: A Mesmerizing Chemical Dance 🌈\n\nThis captivating process uses hydrogen peroxide, potassium iodate, malonic acid, manganese sulfate, and starch.\nIodine and iodate ions interact to form compounds that shift the solution's color, while starch amplifies the blue color before it breaks down and starts again.💡\n\nFollow @Science for more",
        images: [
          "https://picsum.photos/200/300"
        ],
        timeStamp: "18-05-2025",
        comments: 50,
        stars: 1502,
        isEdited: false);
    List<Post> allPosts = <Post>[post_1, post_2];
    return allPosts;
  }

  //U
  Future<void> updatePost() async {}

  //D
  Future<void> deletePost() async {}
}
