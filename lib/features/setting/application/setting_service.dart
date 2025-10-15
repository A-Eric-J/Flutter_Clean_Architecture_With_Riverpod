import 'package:flutter_clean_architecture_with_riverpod/features/setting/application/isetting_service.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/data/repository/isetting_repository.dart';
import 'package:flutter_clean_architecture_with_riverpod/features/setting/data/repository/setting_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingServiceProvider = Provider<IsettingService>((ref) {
  final settingRepository = ref.watch(settingRepositoryProvider);

  return SettingService(settingRepository);
});

final class SettingService implements IsettingService {
  final ISettingRepository _settingRepository;

  SettingService(this._settingRepository);

  @override
  Future<void> clearToken() async {
    try {
      await _settingRepository.clearToken();
    } catch (_) {
      rethrow;
    }
  }
}
