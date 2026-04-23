import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_floating_action_button.dart';
import 'package:notes_app/widgets/home_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(
        title: 'Notes',
        icon: Icons.search,
        titleSize: 28, onTap: () {},
      ),
      body: const HomeViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
