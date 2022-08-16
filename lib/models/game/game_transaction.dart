import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'game_transaction.freezed.dart';
part 'game_transaction.g.dart';

enum TransactionType {
  ron,
  tsumo,
  ryuukyoku,
  correction,
}

@freezed
class MochitenChange with _$MochitenChange {
  @HiveType(typeId: 5, adapterName: 'MochitenChangeAdapter')
  const factory MochitenChange({
    @HiveField(0) required int downPlayer,
    @HiveField(1) required int rightPlayer,
    @HiveField(2) required int upPlayer,
    @HiveField(3) required int leftPlayer,
  }) = _MochitenChange;

  factory MochitenChange.fromJson(Map<String, Object?> json) =>
      _$MochitenChangeFromJson(json);
}

@freezed
class GameTransaction with _$GameTransaction {
  @HiveType(typeId: 4, adapterName: 'GameTransactionAdapter')
  const factory GameTransaction({
    @HiveField(0) required DateTime createdAt,
    @HiveField(1) required TransactionType type,
    @HiveField(2) required int roundChange,
    @HiveField(3) required int honbaChange,
    @HiveField(4) required int kyoutakuChange,
    @HiveField(5) required MochitenChange mochitenChange,
  }) = _GameTransaction;

  factory GameTransaction.fromJson(Map<String, Object?> json) =>
      _$GameTransactionFromJson(json);
}
