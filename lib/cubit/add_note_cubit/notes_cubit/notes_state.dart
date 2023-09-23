part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesLoadingState extends NotesState {}

class NotesSuccessState extends NotesState {
  final List notes;

  NotesSuccessState(this.notes);
}

class NotesFaliuerState extends NotesState {
  final String erroMessage;

  NotesFaliuerState(this.erroMessage);
}
