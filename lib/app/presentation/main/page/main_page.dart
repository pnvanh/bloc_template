import 'package:bloc_template/app/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key, required this.screens});

  final Widget screens;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc()..add(HomeSelected()),
      child: MainBody(
        screens: screens,
      ),
    );
  }
}
