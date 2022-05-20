import 'package:ds3_pam2_tcc_show_room/pages/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TccApp());
}

class TccApp extends StatelessWidget {
  const TccApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
    );
  }
}
