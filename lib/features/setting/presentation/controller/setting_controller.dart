import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/provider/auth_state_provider.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/application/setting_service.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/presentation/state/setting_state.dart';

part 'setting_controller.g.dart';

@Riverpod(keepAlive: true)
class SettingController extends _$SettingController {
  @override
  SettingState build() {
    return SettingState();
  }

  Future<void> clearToken() async {
    // clear token - access token and refresh token
    await ref.read(settingServiceProvider).clearToken();

    // set auth state - false
    ref.read(authStateProvider.notifier).setAuthState(false);
  }
}
