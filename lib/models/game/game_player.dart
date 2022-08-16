import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'game_player.freezed.dart';
part 'game_player.g.dart';

@freezed
class GamePlayer with _$GamePlayer {
  @HiveType(typeId: 3, adapterName: 'GamePlayerAdapter')
  const factory GamePlayer({
    @HiveField(0) required String name,
    @HiveField(1)
        required int initPosition, // 0: east, 1: south, 2: west, 3: north
    @HiveField(2) required bool isRiichi,
  }) = _GamePlayer;
  factory GamePlayer.fromJson(Map<String, Object?> json) =>
      _$GamePlayerFromJson(json);

  static GamePlayer getDefaultPlayer(String name, int initPosition) {
    return GamePlayer(
      name: name,
      initPosition: initPosition,
      isRiichi: false,
    );
  }
}
