
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../constaints.dart';
import '../models/note_model.dart';
import 'note_view_item.dart';

class SearchNote extends SearchDelegate {
  NoteModel? note;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(height: 200, child: NoteViewItem(note: note!));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    Box NoteBox = Hive.box(kNotesBox);
    List<NoteModel> filtered = NoteBox.values
        .whereType<NoteModel>()
        .where((e) => e.title.startsWith(query))
        .toList();
    List<NoteModel> listNoteBox =
        NoteBox.values.whereType<NoteModel>().toList();
    return ListView.builder(
      itemCount: query == '' ? NoteBox.length : filtered.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            query =
                query == '' ? listNoteBox[index].title : filtered[index].title;
            note = query == '' ? listNoteBox[index] : filtered[index];
            showResults(context);
          },
          child: Container(
              child: query == ''
                  ? ListTile(title: Text(listNoteBox[index].title))
                  : ListTile(title: Text(filtered[index].title))),
        );
      },
    );
  }
}














