import 'package:flutter/material.dart';
import 'package:unidue/screens/dashboard/widgets/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).colorScheme.tertiary,
              ),
              onPressed: () {
                setState(() {
                  _key.currentState!.openDrawer();
                });
              },
            ),
            Image.asset(
              "assets/images/logo_blue.png",
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
      drawer: const DashboardDrawer(),
      body: const Center(
        child: Text("Início"),
      ),
    );
  }
}
