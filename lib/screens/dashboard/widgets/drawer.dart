import 'package:flutter/material.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.white,
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/images/logo_blue.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                Text(
                  "UniDue!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.send,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text("Mensagens"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.store_mall_directory,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text("Parceiros"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.groups,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text("Grupos"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.calendar_month_sharp,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text("Calendário"),
            onTap: () {},
          ),
          const Spacer(),
          ListTile(
            leading: Icon(
              Icons.support_agent,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text("Sugestões e contato"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}