import 'dart:io';

import 'package:flutter/material.dart';

import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import './models/transaction.dart';
import './widgets/chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

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
      amount: 10.9,
      date: DateTime.now(),
    ),
  ];

  // List<Transaction> get _recentTransactions {
  //   return _userTransactions.where((tx) {
  //     return tx.date.isAfter(
  //       DateTime.now().subtract(
  //         Duration(days: 7),
  //       ),
  //     );
  //   });
  // }

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
    return Scaffold(
      appBar: AppBar(
        title: new Text('Personal Expenses',
            style: TextStyle(fontFamily: 'Red_Hat_Mono')),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Chart(_recentTransactions),
            TransactionList(_useTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Platform.isIOS
          ? Container()
          : FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () => startAddNewTransaction(context),
            ),
    );
  }
}
