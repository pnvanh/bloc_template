import 'package:bloc_template/app/core/constants/app_colors.dart';
import 'package:bloc_template/app/presentation/main/widgets/widgets.dart';

import 'package:flutter/material.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key, required this.screens});

  final Widget screens;
  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.transparent,
        ),
        child: BottomNavigationWidget(),
      ),
    );
  }
}
