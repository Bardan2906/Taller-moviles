import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: const [
        PromotionalBanner(
          title: 'Festival de verano',
          description: 'Boletas disponibles con 20% de descuento esta semana.',
          icon: Icons.music_note,
        ),
        SizedBox(height: 16),
        Text(
          'Playlists para ti',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        ImageCarousel(),
        SizedBox(height: 16),
        Text(
          'Publicaciones',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        PostCard(
          userName: 'Valentina',
          avatarUrl: 'https://media.istockphoto.com/id/517136006/es/vector/vintage-tonos-rockabilly-estilo-rostro-de-chica-con-gafas-de-sol-ilustraci%C3%B3n-de-vectores.jpg?s=612x612&w=0&k=20&c=waa_DI-x8UmLOSVZGGBHgUwUkcE3T7SsH_UbLkEZfoM=',
          imageUrl: 'https://picsum.photos/id/1025/600/400',
          description: 'Noche increíble en el concierto, no paré de cantar 🎤',
        ),
        PostCard(
          userName: 'Santi',
          avatarUrl: 'https://static.wikia.nocookie.net/death-battle-en-espanol/images/5/57/Coronel_Sanders.png/revision/latest?cb=20221029223044&path-prefix=es',
          imageUrl: 'https://picsum.photos/id/1011/600/400',
          description: 'Mi playlist de la semana ya está lista',
        ),
        PostCard(
          userName: 'Arturo',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57cHNQhBHYJfArrrAsXwBmbIm66i5HbN8_Y2uMh0gxj-_qKU-PhjP3aI&s=10',
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/b/b7/Metallica_logo.png?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original',
          description: 'Mi Banda de Favorita de esta semana',
        ),
      ],
    );
  }
}