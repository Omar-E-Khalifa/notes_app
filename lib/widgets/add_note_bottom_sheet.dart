import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        CustomTextField(
            hintText: 'title',
            borderColor: Colors.white,
            cursorColor: KprimaryColor,
            textInputAction: TextInputAction.next),
        CustomTextField(
          hintText: 'Content',
          borderColor: Colors.white,
          cursorColor: KprimaryColor,
          height: 200,
          textInputType: TextInputType.multiline,
          textInputAction: TextInputAction.newline,
        ),
      ],
    );
  }
}
