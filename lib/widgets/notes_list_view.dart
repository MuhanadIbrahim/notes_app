import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_view_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const NoteViewItem();
    });
  }
}
