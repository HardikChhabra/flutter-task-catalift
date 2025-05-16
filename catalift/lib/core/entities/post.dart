//post entity

class Post {
  String postId;
  String userId;
  List<String> tags;
  String title;
  String content;
  List<String> images;
  String timeStamp;

  Post(this.postId, this.userId, this.tags, this.title, this.content,
      this.images, this.timeStamp);
}
