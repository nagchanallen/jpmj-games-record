import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';
import 'package:jpmj_games_record/models/game/game_data.dart';

final defaultGameData = GameData(
  id: "no-game",
  createdAt: DateTime.now(),
  downPlayer: GamePlayer.getDefaultPlayer("Player 1", 0),
  rightPlayer: GamePlayer.getDefaultPlayer("Player 2", 1),
  upPlayer: GamePlayer.getDefaultPlayer("Player 3", 2),
  leftPlayer: GamePlayer.getDefaultPlayer("Player 4", 3),
  config: defaultGameConfig,
  transactions: [],
);

class CurrentGameNotifier extends StateNotifier<GameData> {
  CurrentGameNotifier(GameData initState) : super(initState);

  void initializeGameData(GameData initState) {
    state = initState;
  }

  void resetGameData(GameData newState) {
    state = newState;
  }
}

final currentGameProvider =
    StateNotifierProvider<CurrentGameNotifier, GameData>((ref) {
  return CurrentGameNotifier(defaultGameData);
});
