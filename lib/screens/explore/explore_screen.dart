import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unidue/screens/explore/widgets/explore_top_area.dart';
import 'package:unidue/screens/explore/widgets/top_scaffold.dart';
import 'package:unidue/widgets/cards/live_event_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TopScaffold(),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const ExploreTopArea(),
            const SizedBox(height: 20),
            Divider(
              color: Theme.of(context).colorScheme.outline,
              height: 0.5,
              thickness: 0.5,
            ),
            const SizedBox(height: 20),
            Text(
              "Acontecendo agora",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
            ),
            const SizedBox(height: 20),
            const LiveEventCard(),
          ],
        ),
      ),
    );
  }
}
