import 'package:uuid/uuid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('d MMMM y');

enum Category { food, transport, entertainment, shopping, bills, rent, other }

// ignore: constant_identifier_names
final categoryIcons = {
  Category.food: const FaIcon(FontAwesomeIcons.burger),
  Category.transport: const FaIcon(FontAwesomeIcons.car),
  Category.shopping: const FaIcon(FontAwesomeIcons.bagShopping),
  Category.entertainment: const FaIcon(FontAwesomeIcons.champagneGlasses),
  Category.bills: const FaIcon(FontAwesomeIcons.receipt),
  Category.rent: const FaIcon(FontAwesomeIcons.house),
  Category.other: const FaIcon(FontAwesomeIcons.boxesStacked),
};

const uuid = Uuid();
// This class represents an expense with a unique ID, title, amount, and date.

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formatedDate {
    return formatter.format(date);
  }
}
