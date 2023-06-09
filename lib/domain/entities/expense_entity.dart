import 'package:flutter/material.dart';

enum PaymmentType { card, money, pix }

class ExpenseEntity {
  double? value;
  String? description;
  IconData? icon;
  DateTime? date;
  PaymmentType? paymmentType;

  ExpenseEntity(
      {this.value, this.description, this.icon, this.date, this.paymmentType});
}
