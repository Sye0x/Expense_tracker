import 'package:expanse_tracker/widget/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';
import 'package:expanse_tracker/models/expense.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpenseList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return ExpenseItems(expenses[index]);
      },
    );
  }
}
