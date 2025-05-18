import 'package:catalift/core/entities/post.dart';
import 'package:flutter/material.dart';

import 'package:catalift/core/entities/user.dart';

class PostComponent extends StatelessWidget {
  final Post post;
  final User user;

  const PostComponent({super.key, required this.post, required this.user});

  @override
  Widget build(BuildContext context) {
    String userName = user.name;
    String userRole = user.role;
    String userCompany = user.companyName;
    String timeElapsed = "1d"; //logic to calculate time from timestamp of post
    String isEdited = post.isEdited ? "Edited" : "";
    String imageUrl = post.images[0];
    String content = post.content;
    int starCount = post.stars;
    int commentCount = post.comments;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          //User info
          Row(
            children: [
              // Profile Circle
              const CircleAvatar(
                radius: 28,
                backgroundColor: Colors.grey,
                //Change with actual profile url
                child: Icon(Icons.person, color: Colors.white, size: 28),
              ),
              const SizedBox(width: 12),

              // Text Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '$userRole at $userCompany',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '$timeElapsed · $isEdited',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),

              // Add person icon
              const Icon(Icons.person_add_alt, color: Colors.black54),
            ],
          ),

          //content
          Text(
            content,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400, // Semi-bold
              color: Colors.black87,
            ),
          ),

          //image
          Center(
              child: Image.network(
            imageUrl,
            height: 160,
            width: MediaQuery.of(context).size.width - 16,
          )),

          //stars and comments
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Number of Stars
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFF000060),
                  ),
                  Text(
                    "$starCount Stars",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      // Semi-bold
                      color: Color(0xFF000060),
                      // Dark blue/purple tone (adjust as needed)
                      letterSpacing: 0.2,
                    ),
                  ),
                ],
              ),

              //Number of Comments
              Text(
                "$commentCount comments",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  // Semi-bold
                  color: Color(0xFF000060),
                  // Dark blue/purple tone (adjust as needed)
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),

          //post options
        ],
      ),
    );
  }
}
