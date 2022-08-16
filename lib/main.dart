import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_data.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';
import 'package:jpmj_games_record/models/game/game_transaction.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(GameDataAdapter());
  Hive.registerAdapter(GameConfigAdapter());
  Hive.registerAdapter(GamePlayerAdapter());
  Hive.registerAdapter(GameTransactionAdapter());
  Hive.registerAdapter(MochitenChangeAdapter());
}

void main() async {
  await initHive();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
