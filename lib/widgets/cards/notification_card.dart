import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget{
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Expanded(
            child: ListTile(
              isThreeLine: true,
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: CachedNetworkImageProvider(
                    "https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg",
                  )),
              title: Text('@caad'),
              subtitle: Text('curtiu sua publicação\n10 minutos atrás'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          )
        ],
      ),
    );
  }


}
