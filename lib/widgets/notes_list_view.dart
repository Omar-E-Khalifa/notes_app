import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key, required this.notes});
  final List<NoteModel> notes;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) => NoteCard(
          noteModel: notes[index],
        ),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
