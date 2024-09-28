import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../common/constant/configuration/prefs_key.dart';
import '../../domain/repositories/prefs_repository.dart';

@LazySingleton(as: PrefsRepository)
class PrefsRepositoryImpl extends PrefsRepository {
  PrefsRepositoryImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  Future<bool> setTask(String task) =>
      _preferences.setString(PrefsKey.listTask, task);

  @override
  String? get tasks => _preferences.getString(PrefsKey.listTask);

}
