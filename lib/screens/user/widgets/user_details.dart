import 'package:flutter/material.dart';
import 'package:unidue/screens/user/widgets/tags.dart';
import 'package:unidue/screens/user/widgets/user_modal_dialog.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  bool _areTagsShown = true;
  late Widget content;

  @override
  Widget build(BuildContext context) {
    if (_areTagsShown) {
      content = const Expanded(
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 10,
          children: [
            UserTags(
              title: "TCC",
            ),
            UserTags(
              title: "Atlética",
            ),
            UserTags(
              title: "Surf",
            ),
            UserTags(
              title: "Projetos Sociais",
            ),
            UserTags(
              title: "Trilha",
            )
          ],
        ),
      );
    } else {
      content = const Expanded(child: SizedBox());
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "Tom Cruise, 25",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context){
                          return const UserModal();
                        });
                      }, icon: Icon(Icons.pending_outlined))
                ],
              ),
              Column(
                children: [
                  Text(
                    "85 seguidores",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    "87 seguindo",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            content,
            IconButton(
              onPressed: () {
                setState(() {
                  _areTagsShown = !_areTagsShown;
                });
              },
              icon: _areTagsShown
                  ? const Icon(Icons.keyboard_arrow_left)
                  : const Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Icon(Icons.work),
                SizedBox(
                  width: 10,
                ),
                Text("Assessor de Marketing - Atlética")
              ]),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Icon(Icons.account_balance),
                SizedBox(
                  width: 10,
                ),
                Text("Presidente Centro Acadêmico")
              ])
            ],
          ),
        ),
      ],
    );
  }
}
