import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
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
          shape: RoundedRectangleBorder(),
          context: context,
          builder: (context) {
            return AddNoteBottomSheet();
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
