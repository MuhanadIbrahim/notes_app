import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/cubit/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/notes_list_view.dart';
import 'package:notes_app/widgets/search_note.dart';
import '../constaints.dart';
import '../models/note_model.dart';
import 'custom_app_bar.dart';
import 'note_view_item.dart';

class NotesviewBody extends StatefulWidget {
  const NotesviewBody({super.key});

  @override
  State<NotesviewBody> createState() => _NotesviewBodyState();
}

class _NotesviewBodyState extends State<NotesviewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fechAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppBar(
            onPressed: () {
              showSearch(context: context, delegate: SearchNote());
            },
            title: 'Notes',
            icon: Icons.search,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
