import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                child: const ElevatedButton(
                  onPressed: null,
                  child: Text("試合開始"),
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
