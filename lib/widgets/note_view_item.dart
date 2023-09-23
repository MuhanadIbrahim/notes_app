import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteViewItem extends StatelessWidget {
  const NoteViewItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const EditNoteView();
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      note.subtitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 22),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(FontAwesomeIcons.trash, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Text(
                    note.date,
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
