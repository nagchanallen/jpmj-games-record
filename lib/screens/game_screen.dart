import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/models/game/game_data.dart';
import 'package:jpmj_games_record/providers/current_game.dart';
import 'package:jpmj_games_record/repositories/db_latest_game.dart';

class GameScreen extends ConsumerStatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  GameScreenState createState() => GameScreenState();
}

class GameScreenState extends ConsumerState<GameScreen> {
  late final IDBLatestGameRepository _dbLatestGameRepo;

  GameScreenState() {
    _dbLatestGameRepo = DBLatestGameRepository();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GameData currentGame = ref.watch(currentGameProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  child: Text("back"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ElevatedButton(
                  child: Text("fetch"),
                  onPressed: () async {
                    await _dbLatestGameRepo.saveLatestGame(currentGame);
                    final data = await _dbLatestGameRepo.loadLatestGame();
                    print(data);
                  }),
              Text(
                currentGame.toString(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
