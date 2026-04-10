import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  final List<NoteModel> notesList = const [
    NoteModel(
      title: 'Here Goes The Title',
      description: 'Here goes the description',
      date: 'March 10, 2026',
      noteColor: Colors.amber,
    ),
    NoteModel(
      title: 'Here Goes The Title',
      description: 'Here goes the description',
      date: 'March 10, 2026',
      noteColor: Colors.teal,
    ),
    NoteModel(
      title: 'Here Goes The Title',
      description: 'Here goes the description',
      date: 'March 10, 2026',
      noteColor: Colors.lightBlueAccent,
    ),
    NoteModel(
      title: 'Here Goes The Title',
      description: 'Here goes the description',
      date: 'March 10, 2026',
      noteColor: Colors.tealAccent,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: NotesListView(
          notes: notesList,
        ));
  }
}

