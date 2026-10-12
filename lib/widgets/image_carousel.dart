import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _PlaylistCard(
            title: 'Pop',
            imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/michael-jackson-performs-during-the-bad-tour-at-the-los-news-photo-1693293324.jpg?crop=0.816xw:0.612xh;0.106xw,0.0829xh&resize=640:*',
          ),
          _PlaylistCard(
            title: 'Rock',
            imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/kiss-nombre-grupo-1623832543.jpg?crop=0.754xw:1.00xh;0.139xw,0&resize=980:*',
          ),
          _PlaylistCard(
            title: 'Reggaetón',
            imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvDRDo3xtd7sHrhS7OkdTBxM0FsERs5lOkp3rd3OdHjKXHEszX47S-5s8&s=10',
          ),
          _PlaylistCard(
            title: 'Indie',
            imageUrl: 'https://framerusercontent.com/images/4MctPd099y1wmNk1AObutCDE8.png?width=2048&height=2048',
          ),
        ],
      ),
    );
  }
}

class _PlaylistCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const _PlaylistCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.deepPurple, width: 2),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          shadows: [Shadow(blurRadius: 4, color: Colors.black)],
        ),
      ),
    );
  }
}