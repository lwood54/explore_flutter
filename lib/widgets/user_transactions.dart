import '../models/transaction.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 52.25,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Coffee',
      amount: 7.99,
      date: DateTime.now(),
    ),
  ];
  void _handleAddTransaction(String title, double amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_handleAddTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
