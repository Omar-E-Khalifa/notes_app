import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const NoteCard(
            color: Colors.amber,
            title: 'Here goes the Title',
            description: 'Here goes the Description',
            date: 'March 10, 2026',
          ),
          const NoteCard(
            color: Colors.teal,
            title: 'Here goes the Title',
            description: 'Here goes the Description',
            date: 'March 10, 2026',
          ),
          const NoteCard(
            color: Colors.lightBlueAccent,
            title: 'Here goes the Title',
            description: 'Here goes the Description',
            date: 'March 10, 2026',
          ),
          const NoteCard(
            color: Colors.greenAccent,
            title: 'Here goes the Title',
            description: 'Here goes the Description',
            date: 'March 10, 2026',
          ),
          const NoteCard(
            color: Colors.tealAccent,
            title: 'Here goes the Title',
            description: 'Here goes the Description',
            date: 'March 10, 2026',
          ),
        ],
      ),
    );
  }
}
