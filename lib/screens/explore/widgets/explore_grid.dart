import 'package:flutter/material.dart';
import 'package:unidue/widgets/touchableopacity.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key, required this.sources});

  final List<String> sources;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      childAspectRatio: 2.4,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        TouchableOpacity(
          onTap: () {  },
          child: AspectRatio(
            aspectRatio: 3,
            child: Image.asset(
              sources[0],
            ),
          ),
        ),
        TouchableOpacity(
          onTap: (){},
          child: AspectRatio(
            aspectRatio: 3,
            child: Image.asset(
              sources[1],
            ),
          ),
        ),
        TouchableOpacity(
          child: AspectRatio(
            aspectRatio: 3,
            child: Image.asset(
              sources[2],
            ),
          ),
        ),
        TouchableOpacity(
          child: AspectRatio(
            aspectRatio: 3,
            child: Image.asset(
              sources[3],
            ),
          ),
        ),
      ],
    );
  }
}
