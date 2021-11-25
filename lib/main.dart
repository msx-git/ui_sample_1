import 'package:flutter/material.dart';

import 'package:ui_sample_1/data.dart';
import 'package:ui_sample_1/widgets/cards.dart';
import 'package:ui_sample_1/widgets/expenses.dart';
import 'package:ui_sample_1/widgets/wallet_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Circular',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: const [
          SizedBox(height: 8),
          SizedBox(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(child: Cards()),
          Expanded(child: Expenses()),
        ],
      ),
    );
  }
}
