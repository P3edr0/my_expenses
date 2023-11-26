import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/presentation/utils/translaters.dart';

class ExpensesDetailsCard {
  final DateFormat date = DateFormat('EEEE - d MMMM y');
  Future buildDialog(context, ExpenseEntity expense) async {
    return await showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10)),
              height: 305,
              width: 200,
              child: Column(
                children: [
                  Icon(
                    expense.expenseTypes!.icon,
                    size: 30,
                    color: Colors.green,
                  ),
                  const Text(
                    "Descrição",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    expense.name!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    expense.description!,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    expense.date!,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        overflow: TextOverflow.clip),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Valores",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    'R\$ ${expense.value!}',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    Translaters().paymmentTranslate(expense.paymmentType!),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Autor",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    expense.author!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        overflow: TextOverflow.clip),
                  ),
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Text(
                          "Fechar",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              overflow: TextOverflow.clip),
                        ),
                      ))
                ],
              ),
            ),
          );
        }));
  }
}
