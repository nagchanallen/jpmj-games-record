import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';
import 'package:jpmj_games_record/models/game/game_transaction.dart';
import 'package:hive/hive.dart';

part 'game_data.freezed.dart';
part 'game_data.g.dart';

@freezed
class GameData with _$GameData {
  @HiveType(typeId: 1, adapterName: 'GameDataAdapter')
  const factory GameData({
    @HiveField(0) required String id,
    @HiveField(1) required DateTime createdAt,
    @HiveField(2) required GamePlayer downPlayer,
    @HiveField(3) required GamePlayer rightPlayer,
    @HiveField(4) required GamePlayer upPlayer,
    @HiveField(5) required GamePlayer leftPlayer,
    @HiveField(6) required GameConfig config,
    @HiveField(7) required List<GameTransaction> transactions,
  }) = _GameData;

  factory GameData.fromJson(Map<String, Object?> json) =>
      _$GameDataFromJson(json);
}
