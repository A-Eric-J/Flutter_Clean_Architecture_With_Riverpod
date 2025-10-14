import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/style/dimens.dart';
import 'package:flutter_clean_architecture_with_riverpod/gen/assets.gen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginWith extends ConsumerWidget {
  const LoginWith({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      Text(
        "or login with".hardcoded,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
      const SizedBox(height: kSmall),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon:  Assets.images.google.svg(
              width: 24,
              height: 24
            ),
            onPressed: () {
              // Handle Google login
            },
          ),
          IconButton(
            icon: Assets.images.apple.svg(
                width: 24,
                height: 24
            ),
            onPressed: () {
              // Handle Apple login
            },
          ),
        ],
      ),
    ]);
  }
}
