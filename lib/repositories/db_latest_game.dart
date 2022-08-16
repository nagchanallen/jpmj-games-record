import 'package:hive/hive.dart';
import 'package:jpmj_games_record/models/game/game_data.dart';

abstract class IDBLatestGameRepository {
  Future<void> saveLatestGame(GameData gameData);
  Future<GameData?> loadLatestGame();
  Future<void> deleteLatestGame();
}

class DBLatestGameRepository extends IDBLatestGameRepository {
  static String latestGameBoxName = "latestGame";
  static String latestGameBoxKey = "data";

  DBLatestGameRepository() {}

  @override
  Future<void> saveLatestGame(GameData gameData) async {
    final box = await Hive.openBox<GameData>(latestGameBoxName);
    await box.put(latestGameBoxKey, gameData);
    await box.close();
  }

  @override
  Future<GameData?> loadLatestGame() async {
    final box = await Hive.openBox<GameData>(latestGameBoxName);
    final data = box.get(latestGameBoxKey);
    await box.close();
    return data;
  }

  @override
  Future<void> deleteLatestGame() async {
    final box = await Hive.openBox<GameData>(latestGameBoxName);
    await box.delete(latestGameBoxKey);
  }
}
