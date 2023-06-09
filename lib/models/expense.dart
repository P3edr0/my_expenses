import 'package:flutter/material.dart';

enum PaymmentType { card, money, pix }

class Expense {
  double? value;
  String? description;
  IconData? icon;
  DateTime? date;
  PaymmentType? paymmentType;

  Expense(
      {this.value, this.description, this.icon, this.date, this.paymmentType});
}
