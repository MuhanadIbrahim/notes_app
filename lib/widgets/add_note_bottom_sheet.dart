import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFaliluerState) {
              print(state.erroMessage);
            }
            if (state is AddNoteSuccessState) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AddNoteForm();
          },
        ),
      ),
    );
  }
}
