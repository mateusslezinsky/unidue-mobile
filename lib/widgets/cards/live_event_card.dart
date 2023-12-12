import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LiveEventCard extends StatelessWidget{
  const LiveEventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).colorScheme.secondary, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 30,
                foregroundImage: CachedNetworkImageProvider(
                  "https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg",
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("@tomcruise",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                const Text("Festa aqui em casa"),
                const SizedBox(height: 5),
                Text("Apenas alunos do CSE",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold))
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.where_to_vote_rounded,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 30,
                ),
                const SizedBox(height: 10),
                const Text("22:00-00:00")
              ],
            ),
          ],
        ),
      ),
    );
  }

}