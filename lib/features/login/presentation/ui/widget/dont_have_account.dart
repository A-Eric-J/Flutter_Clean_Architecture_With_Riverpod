import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DontHaveAccount extends ConsumerWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?".hardcoded,
        ),
        TextButton(
          onPressed: () {
            // Navigate to signup screen
            context.push('/signup');
          },
          child: Text(
            "Sign up".hardcoded,
          ),
        ),
      ],
    );
  }
}
