import 'package:flutter/material.dart';

class ExpensesDetailsCard {
  Future<Widget> buildDialog(context, Expense) async {
    return await showDialog(
        context: context,
        builder: ((context) {
          return Dialog(
            child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: const Text(
                  "Detalhes da conta",
                )),
          );
        }));
  }
}
