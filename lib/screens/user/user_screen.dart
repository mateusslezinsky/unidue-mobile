import 'package:flutter/material.dart';
import 'package:unidue/screens/user/settings/user_settings.dart';
import 'package:unidue/screens/user/widgets/user_details.dart';
import 'package:unidue/screens/user/widgets/user_header.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  void _openSettings() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return const UserSettings();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text("@tomcruise"),
        actions: [
          IconButton(
            onPressed: _openSettings,
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: ListView(children: const [
        UserHeader(),
        UserDetails(),
      ]),
    );
  }
}
