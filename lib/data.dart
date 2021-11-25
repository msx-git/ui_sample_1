import 'package:flutter/material.dart';

const Color primaryColor = Color(0xfff2f6f6);

List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: const Offset(-5,-5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900]!.withOpacity(0.2),
    spreadRadius: 2,
    offset: const Offset(7,7),
    blurRadius: 20,
  ),
];
final List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];

final List category = [
  {"name": "Groceries", "amount": 500.0},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Eating Out", "amount": 80.0},
  {"name": "Bills", "amount": 50.0},
  {"name": "Subscriptions", "amount": 100.0},
  {"name": "Fees", "amount": 30.0},
];
