import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(),
          context: context,
          builder: (context) {
            return BlocProvider.value(
              value: BlocProvider.of<NotesCubit>(context),
              child: AddNoteBottomSheet(),
            );
          },
        );
      },
      shape: CircleBorder(),
      backgroundColor: kPrimaryColor,
      foregroundColor: Colors.black,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
