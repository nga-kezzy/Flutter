import 'package:flutter/material.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<Transaction> transactions = [
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

  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            elevation: 5,
            child: Container(
              width: 100,
              height: 40,
              child: Text('chart'),
            ),
          ),
          Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Titel'),
                    controller: titlecontroller,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountcontroller,
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.red,
                    onPressed: () {
                      print(titlecontroller.text);
                      print(amountcontroller.text);
                    },
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '\$ ${tx.amount}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.pink),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(191, 62, 255, 0.4),
                          ),
                        ),
                        Text(
                          DateFormat('yyyy MM dd').format(tx.date),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
