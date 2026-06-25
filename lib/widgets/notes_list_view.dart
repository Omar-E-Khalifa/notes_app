import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) => NoteCard(
              noteModel: NoteModel(
                  title: 'Here goes the title',
                  description: 'Here goes the description',
                  date: '23/4/2026',
                  colorValue: Colors.lightBlue.toARGB32()),
            ),
            physics: const BouncingScrollPhysics(),
          ),
        );
      },
    );
  }
}
