import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ChatTile(
          name: 'Valentina',
          message: '¿Vas al concierto del sábado?',
          time: '9:41',
          avatarUrl: 'https://media.istockphoto.com/id/517136006/es/vector/vintage-tonos-rockabilly-estilo-rostro-de-chica-con-gafas-de-sol-ilustraci%C3%B3n-de-vectores.jpg?s=612x612&w=0&k=20&c=waa_DI-x8UmLOSVZGGBHgUwUkcE3T7SsH_UbLkEZfoM=',
          unread: true,
        ),
        ChatTile(
          name: 'Santi',
          message: 'Te pasé mi playlist nueva 🎧',
          time: '9:15',
          avatarUrl: 'https://static.wikia.nocookie.net/death-battle-en-espanol/images/5/57/Coronel_Sanders.png/revision/latest?cb=20221029223044&path-prefix=es',
          unread: true,
        ),
        ChatTile(
          name: 'Camila',
          message: 'Ya compré las boletas del festival',
          time: 'Ayer',
          avatarUrl: 'https://picsum.photos/id/65/100/100',
          unread: false,
        ),
        ChatTile(
          name: 'Arturo',
          message: 'Prefiero Metalica',
          time: 'Ayer',
          avatarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ57cHNQhBHYJfArrrAsXwBmbIm66i5HbN8_Y2uMh0gxj-_qKU-PhjP3aI&s=10',
          unread: false,
        ),
        ChatTile(
          name: 'Laura',
          message: 'Nos vemos en la entrada a las 7',
          time: 'Lun',
          avatarUrl: 'https://picsum.photos/id/338/100/100',
          unread: true,
        ),
        ChatTile(
          name: 'Daniel',
          message: 'Jajaja qué concierto tan épico',
          time: 'Dom',
          avatarUrl: 'https://static.vecteezy.com/system/resources/previews/008/671/075/non_2x/motorcycle-and-winged-biker-vector.jpg',
          unread: false,
        ),
      ],
    );
  }
}