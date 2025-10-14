

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/login/presentation/ui/widget/login_form.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'.hardcoded),
      ),
      body: const LoginForm(),
    );
  }
}