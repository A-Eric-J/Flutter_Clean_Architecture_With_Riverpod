import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/provider/start_up_provider.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/startup/start_up_error.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/startup/start_up_loading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class StartUpScreen extends ConsumerWidget {
  final WidgetBuilder builder;
  const StartUpScreen({super.key, required this.builder});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startUp = ref.watch(startUpProvider);

    return startUp.when(
      data: (_) => builder(context),
      error: (e, s) {
        return StartUpError(error: e);
      },
      loading: () => const StartUpLoading(),
    );
  }
}
