import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/data/local/secure_storage/isecure_storage.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage.dart';
import 'package:flutter_clean_architecture_with_riverpod/core/data/local/secure_storage/secure_storage_const.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/data/source/local/isetting_storage.dart';

final settingStorageProvider = Provider<ISettingStorage>((ref) {
  final secureStorage = ref.watch(secureStorageProvider);

  return SettingStorage(secureStorage);
});

class SettingStorage implements ISettingStorage {
  final ISecureStorage _secureStorage;

  SettingStorage(this._secureStorage);

  @override
  Future<void> clearToken() async {
    await _secureStorage.delete(accessTokenKey);
    await _secureStorage.delete(refreshTokenKey);
  }
}
