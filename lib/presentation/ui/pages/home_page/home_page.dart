import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/presentation/ui/components/bottom_navigator_bar.dart';
import 'package:meus_gastos/presentation/ui/pages/home_page/components/expense_details_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

int selectedIndexPage = 1;
bool changeColor = false;
List<ExpenseEntity> expenses = [];
final DateFormat date = DateFormat('EEEE - d MMMM y');

class _HomeState extends State<HomePage> {
  @override
  void initState() {
    expenses.add(ExpenseEntity(
        value: 139.99,
        date: DateTime.now(),
        description: "Pensão Alimentícia",
        icon: Icons.child_friendly,
        paymmentType: PaymmentType.money));
    expenses.add(ExpenseEntity(
        value: 139.99,
        date: DateTime.now(),
        description: "Pensão Alimentícia",
        icon: Icons.child_friendly,
        paymmentType: PaymmentType.money));
    expenses.add(ExpenseEntity(
        value: 1395.99,
        date: DateTime.now(),
        description: "Pensão Alimentícia",
        icon: Icons.child_friendly,
        paymmentType: PaymmentType.money));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green[800],
          title: const Text("Minhas Despesas")),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              // width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width - 20,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.green[700]!, width: 3),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 5,
                                offset: const Offset(5, 5)),
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 5,
                                offset: const Offset(-5, -5))
                          ],
                          color: Colors.white),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            costBar('S'),
                            costBar('T'),
                            costBar('Q'),
                            costBar('Q'),
                            costBar('S'),
                            costBar('S'),
                            costBar('D')
                          ]))
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: expenses.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: (() async {
                      ExpensesDetailsCard()
                          .buildDialog(context, expenses[index]);
                      print("Clicou");
                    }),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 9),
                      height: 80,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.green.withOpacity(0.8),
                                blurRadius: 2,
                                offset: const Offset(2, 2)),
                            BoxShadow(
                                color: Colors.green.withOpacity(0.8),
                                blurRadius: 2,
                                offset: const Offset(-2, -2))
                          ],
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 35,
                            child: Container(
                              height: 26,
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'R\$${expenses[index].value}',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          overflow: TextOverflow.clip),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                ' ${expenses[index].description!}',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    overflow: TextOverflow.clip),
                              ),
                              const SizedBox(height: 5),
                              Icon(
                                expenses[index].icon,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                date.format(expenses[index].date!),
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                    overflow: TextOverflow.clip),
                              ),
                            ],
                          ),
                          IconButton(
                              onPressed: (() {}),
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigatorBar(
          selectedIndexPage: selectedIndexPage, changeColor: changeColor),
    );
  }

  Widget costBar(String weekday) {
    return Column(
      children: [
        Flexible(
          fit: FlexFit.loose,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.green, width: 1)),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(10),
            height: 120,
            width: 15,
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              height: Random().nextDouble() * 80,
              width: 13,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(weekday,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
