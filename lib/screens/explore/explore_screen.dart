import 'package:flutter/material.dart';
import 'package:unidue/screens/explore/widgets/explore_grid.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't show the leading button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Pesquisar",
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Image.asset(
              "assets/images/logo_blue.png",
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/unidue_explore.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: PageView(
                  controller: PageController(),
                  onPageChanged: (page) => setState(() => _currentPage = page),
                  children: const [
                    ExploreGrid(
                      sources: [
                        "assets/images/esportes.jpeg",
                        "assets/images/projetos.png",
                        "assets/images/eventos.jpeg",
                        "assets/images/outside.jpeg"
                      ],
                    ),
                    ExploreGrid(
                      sources: [
                        "assets/images/moradia.jpeg",
                        "assets/images/artecultura.jpg",
                        "assets/images/comunidadevoluntariado.jpg",
                        "assets/images/gruposestudos.jpg"
                      ],
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 40,
                    child: Divider(
                      color: _currentPage== 0 ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline,
                      height: 3,
                      thickness: 3,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 40,
                    child: Divider(
                      color: _currentPage== 1 ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline,
                      height: 3,
                      thickness: 3,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
