import 'package:flutter/cupertino.dart';

class App {
  int? id;
  String? type;
  int? amount;
  String? category;
  String? date_or_time;
  String? mode;
  String? note;
  String? color;

  App(
      {this.id,
        this.type,
        this.amount,
        this.category,
        this.date_or_time,
        this.mode,
        this.note,
        this.color});
}

class Cat_data {
  int? id;
  dynamic? category;
  dynamic? category_id;
  dynamic? date_or_time;


  Cat_data({this.id, this.category, this.category_id,this.date_or_time});
}

class Cash_data {
  int? id;
  int? cash;
  int? credit_card;
  int? debit_card;
  int? net_banking;
  int? cheque;


  Cash_data({this.id, this.cash, this.credit_card,this.debit_card,this.net_banking,this.cheque});
}

