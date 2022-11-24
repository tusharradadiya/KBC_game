
import 'package:flutter/material.dart';
import 'package:kbc/homescreen.dart';
import 'package:kbc/lostpage.dart';
import 'package:kbc/winpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Homepage(),
        '1':(context) => WiningnPage(),
        '2' : (context) => LostingPage(),
      },
    ),
  );
}
