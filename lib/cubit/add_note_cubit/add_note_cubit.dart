import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constaints.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color? color = const Color(0xffFFC6AC);
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNoteLoadingState());

    try {
      var NoteBox = Hive.box(kNotesBox);
      await NoteBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFaliluerState(e.toString()));
    }
  }
}
