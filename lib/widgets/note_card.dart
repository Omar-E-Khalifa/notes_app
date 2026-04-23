import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/read_note_view.dart';
import 'package:notes_app/widgets/custom_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ReadNoteView(note: noteModel),
            ),
          );
        },
        child: Card(
          color: noteModel.noteColor,
          child: SizedBox(
            height: 220,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    iconColor: Colors.black,
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: CustomText(
                          text: noteModel.title,
                          maxLines: 2,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: CustomText(
                      text: noteModel.description,
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
                  Spacer(),
                  CustomText(
                    text: noteModel.date,
                    maxLines: 1,
                    fontSize: 14,
                    color: Colors.black.withValues(alpha: 0.7),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
