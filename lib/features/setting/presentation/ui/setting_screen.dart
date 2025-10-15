import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/extention/string_hardcoded.dart';
import 'package:flutter_clean_architecture_with_riverpod/common/style/dimens.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/theme/theme_controller.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/presentation/controller/setting_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'.hardcoded),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: ()  {
                  ref.read(settingControllerProvider.notifier).clearToken();
                 context.go('/login');
                },
                child: Text('Logout'.hardcoded),
              ),
        SizedBox(height: kMedium,),
        ElevatedButton(
                onPressed: () => ref.read(themeControllerProvider.notifier).toggleTheme(),
                child:  Text('Toggle Theme'.hardcoded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
