import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_player.freezed.dart';
part 'game_player.g.dart';

@freezed
class GamePlayer with _$GamePlayer {
  const factory GamePlayer({
    required String name,
    required int initPosition, // 0: east, 1: south, 2: west, 3: north
    required int mochiten,
    required bool isRiichi,
  }) = _GamePlayer;

  factory GamePlayer.fromJson(Map<String, Object?> json) =>
      _$GamePlayerFromJson(json);

  static GamePlayer getDefaultPlayer(String name, int initPosition) {
    return GamePlayer(
      name: name,
      initPosition: initPosition,
      mochiten: 25000,
      isRiichi: false,
    );
  }
}
