import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_view_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView.builder(
          padding: const EdgeInsets.all(0),
          itemBuilder: (context, index) {
            return const NoteViewItem();
          }),
    );
  }
}
