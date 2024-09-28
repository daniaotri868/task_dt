abstract class PrefsRepository {
  String? get tasks;
  Future<bool> setTask(String token);
}
