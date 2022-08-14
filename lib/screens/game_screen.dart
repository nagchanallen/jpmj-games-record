import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jpmj_games_record/providers/game_state.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(ref.read(gameStateProvider));
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
              child: Text("back"),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
    );
  }
}
