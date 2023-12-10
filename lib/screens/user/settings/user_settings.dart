import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Configurações",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        InkWell(
          child: ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Editar perfil"),
            titleTextStyle:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.lock),
          title: const Text(
            "Senha e segurança",
          ),
          titleTextStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        ListTile(
          leading: const Icon(Icons.support_agent),
          title: const Text("Suporte"),
          titleTextStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
        ListTile(
          leading: const Icon(Icons.warning),
          title: const Text("Relatar problema"),
          titleTextStyle:
              Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
