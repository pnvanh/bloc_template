import 'package:bloc/bloc.dart';
import 'package:bloc_template/app/helpers/models/models.dart';
import 'package:bloc_template/app/presentation/main/bloc/bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState.initial()) {
    on<HomeSelected>(onHomeSelected);
    on<ProfileSelected>(onProfileSelected);
  }

  void onHomeSelected(HomeSelected event, Emitter<MainState> emit) async {
    emit(state.copyWith(section: MainTabBarSection.home));
  }

  void onProfileSelected(ProfileSelected event, Emitter<MainState> emit) async {
    emit(state.copyWith(section: MainTabBarSection.profile));
  }
}
