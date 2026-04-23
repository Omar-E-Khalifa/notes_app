import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text.dart';

class ReadNoteView extends StatelessWidget {
  const ReadNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: note.title,
        icon: Icons.edit,
        titleSize: 20,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNoteView(),
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CustomText(
              text: note.description,
              maxLines: null,
              fontSize: 28,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
