import 'package:flutter/material.dart';

class UserModal extends StatefulWidget {
  const UserModal({super.key});

  @override
  State<UserModal> createState() => _UserModalState();
}

class _UserModalState extends State<UserModal> {
  bool _envolvimentoEstudantilShown = false;
  late Widget _envolvimentoEstudantilContent;
  bool _contactInfoShown = false;
  late Widget _contactInfoContent;

  @override
  Widget build(BuildContext context) {
    if (_envolvimentoEstudantilShown) {
      _envolvimentoEstudantilContent = const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Entidades acadêmicas e Projetos"),
          Text("Grupos de Estudo"),
          Text("Premiações"),
        ],
      );
    } else {
      _envolvimentoEstudantilContent = const SizedBox();
    }

    if (_contactInfoShown) {
      _contactInfoContent = const Row(
        children: [
          Text("@tomcruise"),
          SizedBox(width: 30),
          Text("+55 11 997770000"),
        ],
      );
    } else {
      _contactInfoContent = const SizedBox();
    }

    return Dialog(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 15, 10, 20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sobre",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl aliquet nunc, quis aliquam nisl nunc quis nisl."),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Envolvimento Estudantil",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _envolvimentoEstudantilShown =
                              !_envolvimentoEstudantilShown;
                        });
                      },
                      icon: _envolvimentoEstudantilShown
                          ? const Icon(Icons.keyboard_arrow_up)
                          : const Icon(Icons.keyboard_arrow_down)),
                ],
              ),
              _envolvimentoEstudantilContent,
              Row(
                children: [
                  Text(
                    "Informações de Contato",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _contactInfoShown = !_contactInfoShown;
                        });
                      },
                      icon: _contactInfoShown
                          ? const Icon(Icons.keyboard_arrow_up)
                          : const Icon(Icons.keyboard_arrow_down)),
                ],
              ),
              _contactInfoContent,
            ]),
      ),
    );
  }
}
