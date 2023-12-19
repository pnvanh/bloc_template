import 'package:bloc_template/app/core/core.dart';
import 'package:bloc_template/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppLocalization.current.profileLabel,
        style: AppTextStyles.style.body1Regular,
      ),
    );
  }
}
