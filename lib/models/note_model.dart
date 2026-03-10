import 'package:flutter/material.dart';

class NoteModel {
  final String title, description, date;
  final Color noteColor;

  const  NoteModel(
      {required this.title, required this.description, required this.date, required this.noteColor});
}
