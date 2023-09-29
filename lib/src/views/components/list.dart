import 'package:flutter/material.dart';
import '../../models/character_model.dart';
import '../pages/character_details_page.dart';

class MyList extends StatelessWidget {
  final Character character;

  const MyList({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
            leading: Hero(
              tag: character.char_id,
              child: CircleAvatar(
                backgroundImage: NetworkImage(character.image),
              ),
            ),
            title: Text(character.fullName),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(character.nickname),
                Text(character.family),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CharacterDetailsPage(character: character)));
            },
          ),
          const Divider(
            thickness: 2.0,
          )
        ],
      ),
    );
  }
}
