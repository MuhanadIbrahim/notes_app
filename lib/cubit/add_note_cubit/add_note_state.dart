part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

class AddNoteLoadingState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteFaliluerState extends AddNoteState {
  final String erroMessage;

  AddNoteFaliluerState(this.erroMessage);
}
