import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_list_select_color.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
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
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;

              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fechAllNotes();
              Navigator.pop(context);
            },
            title: 'Edite Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subtitle = value;
            },
            hint: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          EditeColorList(note: widget.note)
        ],
      ),
    );
  }
}
