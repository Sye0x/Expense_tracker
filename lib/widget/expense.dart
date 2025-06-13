import "package:expanse_tracker/const/constant.dart";
import "package:expanse_tracker/widget/expenses_list/expense_list.dart";
import "package:expanse_tracker/models/expense.dart";
import "package:expanse_tracker/widget/new_expense.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: "Groceries",
      amount: 50.0,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Transport",
      amount: 20.0,
      date: DateTime.now(),
      category: Category.transport,
    ),
    Expense(
      title: "Entertainment",
      amount: 30.0,
      date: DateTime.now(),
      category: Category.entertainment,
    ),
  ];

  void _openaddexpensemodal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return NewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expanse Tracker",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: cardBackgroundColor,
        actions: [
          IconButton(
            onPressed: _openaddexpensemodal,
            icon: FaIcon(FontAwesomeIcons.plus),
          ),
        ],
      ),
      body: Column(
        children: [
          Text("Expenses Chart"),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
