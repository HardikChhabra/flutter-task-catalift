//post entity

class Post {
  String postId;
  String userId;
  List<String> tags;
  String content;
  List<String> images;
  String timeStamp;
  int stars;
  int comments;
  bool isEdited;

  Post(
      {required this.postId,
      required this.userId,
      required this.tags,
      required this.content,
      required this.images,
      required this.timeStamp,
      required this.comments,
      required this.stars,
      required this.isEdited});

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
        postId: map['postId'],
        userId: map['userId'],
        tags: map['tags'],
        content: map['content'],
        images: map['images'],
        timeStamp: map['timestamp'],
        comments: map['comments'],
        stars: map['stars'],
        isEdited: map['isEdited']);
  }
}
