import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class NewTransaction extends StatelessWidget {
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();
  NewTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
