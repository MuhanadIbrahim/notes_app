import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_view_item.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          NoteViewItem()
        ],
      ),
    );
  }
}
