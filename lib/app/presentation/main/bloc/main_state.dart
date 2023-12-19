import 'package:bloc_template/app/helpers/models/models.dart';
import 'package:equatable/equatable.dart';

enum MainPageStatus { initial, processing, success, failure }

final class MainState extends Equatable {
  final MainPageStatus? status;
  final MainTabBarSection section;

  const MainState({
    required this.section,
    this.status,
  });

  static MainState initial() => MainState(
        section: MainTabBarSection.home,
        status: MainPageStatus.initial,
      );

  MainState copyWith({
    MainPageStatus? status,
    MainTabBarSection? section,
  }) {
    return MainState(
      section: section ?? this.section,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [section, status];
}
