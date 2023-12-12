import 'package:flutter/material.dart';

class TopScaffold extends StatelessWidget{
  const TopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
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
    );
  }

}