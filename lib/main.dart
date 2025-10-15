import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/helpers/hive_helper.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/startup/start_up_screen.dart';
import 'package:flutter_clean_architecture_with_riverpod/main_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveHelper.init();
  runApp(
    ProviderScope(
      child: StartUpScreen(
        builder: (context) => const MainWidget(),
      ),
    ),
  );
}
