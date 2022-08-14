import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'game_config.freezed.dart';
part 'game_config.g.dart';

@freezed
class GameConfig with _$GameConfig {
  const factory GameConfig({
    required int riichiCost,
    required int tsumibou,
    required bool isKiriagemangan,
    required int initMochiten,
  }) = _GameConfig;

  factory GameConfig.fromJson(Map<String, Object?> json) =>
      _$GameConfigFromJson(json);
}

const defaultGameConfig = GameConfig(
  riichiCost: 1000,
  tsumibou: 300,
  isKiriagemangan: false,
  initMochiten: 25000,
);
