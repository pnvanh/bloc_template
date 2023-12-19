import 'package:equatable/equatable.dart';

sealed class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<dynamic> get props => [];
}

final class HomeSelected extends MainEvent {}

final class ProfileSelected extends MainEvent {}
