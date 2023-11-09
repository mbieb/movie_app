import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/config/injection.dart';

Future<void> configure() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('.hidden');
  configureDependencies();
}
