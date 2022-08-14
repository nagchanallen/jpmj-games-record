import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';

part 'game_state.freezed.dart';
part 'game_state.g.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    required String id,
    required DateTime createdAt,
    required int currentRound, // 0: 東一局, 1: 東二局, ...
    required int honba,
    required int kyoutaku,
    required GamePlayer downPlayer,
    required GamePlayer rightPlayer,
    required GamePlayer upPlayer,
    required GamePlayer leftPlayer,
    required GameConfig config,
  }) = _GameState;

  factory GameState.fromJson(Map<String, Object?> json) =>
      _$GameStateFromJson(json);
}
