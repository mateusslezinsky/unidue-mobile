import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Stack(alignment: Alignment.center, children: [
            AspectRatio(
              aspectRatio: 5 / 2,
              child: CachedNetworkImage(
                imageUrl:
                    "https://static.ndmais.com.br/2023/08/entrada-trindade-foto-henrique-almeida-1.jpeg",
                progressIndicatorBuilder: (BuildContext context, String url,
                        DownloadProgress downloadProgress) =>
                    const BlurHash(hash: "LcI#lXD%4-M|_4IURiWU_3NGNFWU"),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          color: Theme.of(context).colorScheme.tertiary,
                          child: Text(
                            "Administração".toUpperCase(),
                            textAlign: TextAlign.start,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      Theme.of(context).colorScheme.tertiary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Seguir",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context)
                              .colorScheme
                              .onTertiary),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      backgroundColor:
                      Theme.of(context).colorScheme.secondary,
                      minimumSize: Size.zero,
                      padding: const EdgeInsets.all(10),
                    ),
                    child: Icon(
                      Icons.message,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  )
                ],
              ),
            ),
            const Positioned(
              bottom: 0,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: CachedNetworkImageProvider(
                  "https://images.mubicdn.net/images/cast_member/2184/cache-2992-1547409411/image-w856.jpg",
                ),
              ),
            )
          ]),
        ),
      ],
    );
  }
}
