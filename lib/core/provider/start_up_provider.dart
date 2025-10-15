import 'package:flutter_clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/provider/auth_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'start_up_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> startUp(Ref ref) async {
  final secureStorage = ref.watch(secureStorageProvider);
  final accessToken = await secureStorage.read(accessTokenKey);

  if (accessToken != null) {
    ref.read(authStateProvider.notifier).setAuthState(true);
  }
}
