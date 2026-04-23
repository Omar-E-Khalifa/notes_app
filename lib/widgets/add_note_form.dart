
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({
    super.key,
  });

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {
  final GlobalKey<FormState> fromKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: fromKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 15),
          CustomTextFormField(
            hintText: 'title',
            borderColor: Colors.white,
            hintColor: kPrimaryColor,
            cursorColor: kPrimaryColor,
            textInputAction: TextInputAction.next,
            onSaved: (value) => title = value,
          ),
          CustomTextFormField(
            hintText: 'Content',
            borderColor: Colors.white,
            hintColor: kPrimaryColor,
            cursorColor: kPrimaryColor,
            height: 200,
            textInputType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            onSaved: (value) => content = value,
          ),
          SizedBox(height: 30),
          CustomButton(
            onPressed: () {
              if (fromKey.currentState!.validate()) {
                fromKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
