part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteLoading extends AddNoteCubitState {}

final class AddNoteSuccess extends AddNoteCubitState {}

final class AddNoteFailed extends AddNoteCubitState {
  final String errMessage;

  AddNoteFailed(this.errMessage);
}
