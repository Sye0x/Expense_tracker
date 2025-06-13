import 'package:expanse_tracker/const/constant.dart';
import 'package:expanse_tracker/widget/expense.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: Scaffold(body: Center(child: Expenses())),
    ),
  );
}
