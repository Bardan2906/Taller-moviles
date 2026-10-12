import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String userName;
  final String avatarUrl;
  final String imageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.userName,
    required this.avatarUrl,
    required this.imageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool _liked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(widget.avatarUrl)),
                const SizedBox(width: 10),
                Text(
                  widget.userName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Image.network(
            widget.imageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
            child: Text(widget.description),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _liked ? Icons.favorite : Icons.favorite_border,
                  color: _liked ? Colors.pinkAccent : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _liked = !_liked;
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}