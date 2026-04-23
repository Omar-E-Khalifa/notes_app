import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => NoteCard(
          noteModel: NoteModel(title: 'Here goes the title', description: 'Here goes the description', date: '23/4/2026', noteColor: Colors.lightBlue),
        ),
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
