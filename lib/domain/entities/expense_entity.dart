import 'package:flutter/material.dart';

enum PaymmentType { card, money, pix }

class ExpenseEntity {
  String? name;
  double? value;
  String? description;
  IconData? icon;
  DateTime? date;
  String? author;
  PaymmentType? paymmentType;

  ExpenseEntity(
      {this.value, this.description, this.icon, this.date, this.paymmentType, this.author,this.name});
}
