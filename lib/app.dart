import 'package:flutter/material.dart';

class DriveTestSniperApp extends StatelessWidget {
  const DriveTestSniperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DriveTest Sniper',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(
          child: Text('DriveTest Sniper Home'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}