import 'package:flutter/material.dart';
import 'presentation/screens/counter/counter_screen.dart';

main() {
  runApp(const MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: const Color.fromARGB(255, 0, 212, 14)),
      debugShowCheckedModeBanner: false,
      home: const Counter(),
    );
  }
}

/*
git status
git add
git add .
git commit -m "Update to reset button and click's"
git push origin master
*/