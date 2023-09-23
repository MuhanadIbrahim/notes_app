import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../../constaints.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fechAllNotes() async {
    
      var NoteBox = Hive.box(kNotesBox);
      List notes = NoteBox.values.toList();
      emit(NotesSuccessState(notes));
   
  }
}
