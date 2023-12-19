import 'package:bloc_template/app/core/constants/constants.dart';
import 'package:bloc_template/app/presentation/main/bloc/bloc.dart';
import 'package:bloc_template/app/presentation/main/widgets/navigation_bar_item.dart';
import 'package:bloc_template/app/routes/routes.dart';
import 'package:bloc_template/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationWidget extends StatelessWidget {
  BottomNavigationWidget({super.key});

  final tabs = [
    NavigationBarItem(
      initialLocation: Routes.homeNamedPage,
      icon: SvgPicture.asset(
        AppIcons.home.assetPath,
        colorFilter: ColorFilter.mode(AppColors.dimGray, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        AppIcons.home.assetPath,
        colorFilter: ColorFilter.mode(AppColors.goGreen, BlendMode.srcIn),
      ),
      label: AppLocalization.current.homeLabel,
    ),
    NavigationBarItem(
      initialLocation: Routes.profileNamedPage,
      icon: SvgPicture.asset(
        AppIcons.tool.assetPath,
        colorFilter: ColorFilter.mode(AppColors.dimGray, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        AppIcons.tool.assetPath,
        colorFilter: ColorFilter.mode(AppColors.goGreen, BlendMode.srcIn),
      ),
      label: AppLocalization.current.profileLabel,
    ),
  ];

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.read<MainBloc>().add(HomeSelected());
        context.go(tabs[index].initialLocation);
        break;
      case 1:
        context.read<MainBloc>().add(ProfileSelected());
        context.go(tabs[index].initialLocation);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      buildWhen: (previous, current) => previous.section != current.section,
      builder: (context, state) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            items: tabs,
            currentIndex: state.section.index,
            onTap: (value) {
              _onItemTapped(value, context);
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.goGreen,
            unselectedItemColor: AppColors.dimGray,
            backgroundColor: AppColors.antiFlashWhite,
          ),
        );
      },
    );
  }
}
