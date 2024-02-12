import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Main Screen",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}