import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _useTransactions = [
    Transaction(
      id: 'x1',
      title: 'News shoes',
      amount: 150.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'x2',
      title: 'News shirt',
      amount: 300.9,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'x3',
      title: 'News hat',
      amount: 500.9,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(
    String txTitle,
    double txAmount,
  ) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState() {
      _useTransactions.add(newTx);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_useTransactions),
      ],
    );
  }
}
