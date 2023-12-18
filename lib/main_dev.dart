import 'package:bloc_template/app/configs/app_config.dart';
import 'package:flutter/material.dart';
import 'app/presentation/my_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.getInstance().config();
  runApp(const MyApp());
}
