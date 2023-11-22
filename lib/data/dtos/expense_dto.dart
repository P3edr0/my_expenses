/*DTO SIGNIFICA DATA TRANSFER OBJECT
 A NOSSA PARTE DE DOMAIN NÃO CONHECE AS QUESTÕES DE 
 SERIALIZAÇÃO, SENDO ASSIM A CLASSE CarroEntity PERMANECE
 PURA.
*/

import 'package:flutter/material.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';

class ExpenseDto extends ExpenseEntity {
  @override
  double? value;
  @override
  String? description;
  @override
  IconData? icon;
  @override
  String? date;
  @override
  PaymmentType? paymmentType;

  ExpenseDto(
      {required this.value,
      required this.description,
      required this.icon,
      required this.date,
      required this.paymmentType});

  Map toMap() {
    return {
      'value': value,
      'description': description,
      'icon': icon,
      'date': date,
      'paymmentType': paymmentType
    };
  }

  static ExpenseDto fromMap(Map map) {
    return ExpenseDto(
        value: map["value"],
        description: map["description"],
        icon: _iconTranslate(map["icon"]),
        date: map["date"],
        paymmentType: map["paymmentType"]);
  }
}

IconData _iconTranslate(String iconText) {
  switch (iconText) {
    case 'Icons.close':
      return Icons.close;

    default:
      return Icons.close;
  }
}
