import 'package:flutter/material.dart';
import 'package:personal_expense_app/transaction.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1', 
      title: "New Shoes", 
      amount: 69.99, 
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2', 
      title: "New Pant", 
      amount: 109.99, 
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.green,
                child: Container(
                  width: double.infinity,
                  child: Text('CHART'),
                ),
                elevation: 5,
              ),
            ),
            Column(children: transactions.map((tx) {
              return Card(child: Text(tx.title),);
            }).toList(), ),
          ],
        )   
    );
  }
}

// Video 72
