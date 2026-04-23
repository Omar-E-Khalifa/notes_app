import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Edit Note', icon: Icons.check, titleSize: 20, onTap: () {}),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            CustomTextFormField(
                hintText: note.title,
                borderColor: Colors.white,
                hintColor: kPrimaryColor,
                cursorColor: kPrimaryColor,
                textInputAction: TextInputAction.next),
            CustomTextFormField(
              hintText: note.description,
              borderColor: Colors.white,
              hintColor: kPrimaryColor,
              cursorColor: kPrimaryColor,
              height: 200,
              textInputType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
            ),
            SizedBox(height: 30),
            // CustomButton(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
