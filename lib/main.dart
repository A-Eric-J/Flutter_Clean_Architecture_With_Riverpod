import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/main_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MainWidget(),
    ),
  );
}
