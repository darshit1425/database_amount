import 'dart:async';

import 'package:database_amount/screen/all_transaction/all_transation.dart';
import 'package:database_amount/screen/expenses/view/expenses.dart';
import 'package:database_amount/screen/income/view/income.dart';
import 'package:database_amount/screen/income_transaction/view/income_transaction.dart';
import 'package:database_amount/screen/splash_screen/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/one': (context) => Income(),
        '/second': (context) => Expenses(),
        '/th': (context) => Transaction(),
        '/four': (context) => Income_tra(),
      },
    ),
  );
}
