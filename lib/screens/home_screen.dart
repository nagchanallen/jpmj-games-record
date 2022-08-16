import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/models/game/game_config.dart';
import 'package:jpmj_games_record/models/game/game_player.dart';
import 'package:jpmj_games_record/models/game/game_data.dart';
import 'package:jpmj_games_record/providers/current_game.dart';
import 'package:jpmj_games_record/screens/game_screen.dart';
import 'package:uuid/uuid.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void startNewGame() {
      var uuid = const Uuid();
      final newGameData = GameData(
        id: uuid.v4(),
        createdAt: DateTime.now(),
        downPlayer: const GamePlayer(
          name: "Player 1",
          initPosition: 0,
          isRiichi: false,
        ),
        rightPlayer: const GamePlayer(
          name: "Player 2",
          initPosition: 1,
          isRiichi: false,
        ),
        upPlayer: const GamePlayer(
          name: "Player 3",
          initPosition: 0,
          isRiichi: false,
        ),
        leftPlayer: const GamePlayer(
          name: "Player 4",
          initPosition: 0,
          isRiichi: false,
        ),
        config: defaultGameConfig,
        transactions: [],
      );
      ref.read(currentGameProvider.notifier).resetGameData(newGameData);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const GameScreen(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: const Text("麻雀記録帳"),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                child: ElevatedButton(
                  onPressed: startNewGame,
                  child: const Text("試合開始"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text("続きから"),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(4.0),
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text("設定"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
