import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard(
      {super.key,
      required this.color,
      required this.title,
      required this.description,
      required this.date});
  final String title, description, date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Card(
        color: color,
        child: SizedBox(
          height: 220,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  iconColor: Colors.black,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: CustomText(
                        text: title,
                        maxLines: 2,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: CustomText(
                    text: description,
                    maxLines: 2,
                    fontSize: 18,
                    color: Colors.black.withValues(alpha: 0.7),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    iconSize: 32,
                  ),
                ),
                Spacer(flex: 1),
                CustomText(
                  text: date,
                  maxLines: 1,
                  fontSize: 14,
                  color: Colors.black.withValues(alpha: 0.7),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
