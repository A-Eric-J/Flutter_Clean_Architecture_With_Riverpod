import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/style/dimens.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/presentation/controller/login_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginButton extends ConsumerWidget {
  final VoidCallback onPressed;
  const LoginButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loginControllerProvider.select((value) => value.isLoading));

    return SizedBox(
      width: double.infinity,
      child: FilledButton.icon(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: kMedium),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kSmall)),
        ),
        label: Text(
          'Login'.hardcoded,
          style: const TextStyle(fontSize: kMedium),
        ),
        icon: isLoading
            ? const CircularProgressIndicator.adaptive()
            : const Icon(Icons.person_add),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
