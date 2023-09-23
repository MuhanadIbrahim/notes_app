import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/note_view_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListView.builder(
              itemCount: state is NotesSuccessState ? state.notes.length : 0,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return NoteViewItem(
                  note: state is NotesSuccessState ? state.notes[index] : null,
                );
              }),
        );
      },
    );
  }
}
