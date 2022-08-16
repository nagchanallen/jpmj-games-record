import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'game_config.freezed.dart';
part 'game_config.g.dart';

@freezed
class GameConfig with _$GameConfig {
  @HiveType(typeId: 2, adapterName: 'GameConfigAdapter')
  const factory GameConfig({
    @HiveField(0) required int riichiCost,
    @HiveField(1) required int tsumibou,
    @HiveField(2) required bool isKiriagemangan,
    @HiveField(3) required int initMochiten,
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
