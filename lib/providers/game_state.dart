import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';
import 'package:jpmj_games_record/models/game/game_state.dart';

final defaultGameState = GameState(
  id: "no-game",
  createdAt: DateTime.now(),
  currentRound: 0,
  honba: 0,
  kyoutaku: 0,
  downPlayer: GamePlayer.getDefaultPlayer("Player 1", 0),
  rightPlayer: GamePlayer.getDefaultPlayer("Player 2", 1),
  upPlayer: GamePlayer.getDefaultPlayer("Player 3", 2),
  leftPlayer: GamePlayer.getDefaultPlayer("Player 4", 3),
  config: defaultGameConfig,
);

class GameStateNotifier extends StateNotifier<GameState> {
  GameStateNotifier(GameState initState) : super(initState);

  void initializeGameState(GameState initState) {
    state = initState;
  }

  void resetGameState(GameState newState) {
    state = newState;
  }
}

final gameStateProvider =
    StateNotifierProvider<GameStateNotifier, GameState>((ref) {
  return GameStateNotifier(defaultGameState);
});
