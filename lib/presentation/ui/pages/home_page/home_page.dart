
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';

import 'package:meus_gastos/presentation/ui/components/bottom_navigator_bar.dart';
import 'package:meus_gastos/presentation/ui/pages/home_page/components/expense_details_card.dart';

import '../../components/expense_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

int selectedIndexPage = 1;
bool changeColor = false;
bool detail = true;
List<ExpenseEntity> expenses = [];
List<Map<String,dynamic>> newValues = [{'Veterinário':15}, {'lanche': 12.99},{'Uber':17.75}];
final DateFormat date = DateFormat('EEEE - d MMMM y');

class _HomeState extends State<HomePage> {

  @override
  void initState() {

    expenses.add(ExpenseEntity(
      name: 'Pensão alimentícia',
        value: 139.99,
        date: DateTime.now(),
        description: "Pensão do cleiton",
        author: 'Pedro C',
        icon: Icons.child_friendly,
        paymmentType: PaymmentType.money));
    expenses.add(ExpenseEntity(
      name: 'Ração do Luke',

        value: 139.99,
        date: DateTime.now(),
        description: "Ração do doguinho",
        author: 'Pedro C',

        icon: Icons.child_friendly,
        paymmentType: PaymmentType.money));
    expenses.add(ExpenseEntity(
      name: 'Calça nova',

        value: 135.99,
        date: DateTime.now(),
        author: 'Glacy C',

        description: "Calça para dança",
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
            child: GestureDetector(
              onTap: (() => setState(() {
                detail = !detail;
              })),
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
                        child:detail? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              costBar('S',Colors.green),
                              costBar('T',Colors.green),
                              costBar('Q',Colors.orange),
                              costBar('Q',Colors.green),
                              costBar('S',Colors.green),
                              costBar('S',Colors.red),
                              costBar('D',Colors.green)
                            ]):
                             Row(children: [
Expanded(child: Chart( data:newValues,
                  variables: {
                    'day': Variable(
                      accessor: (Map datum) => datum['day'] as String,
                      scale: OrdinalScale(inflate: true),
                    ),
                    'value': Variable(
                      accessor: (Map datum) => datum['value'] as num,
                      scale: LinearScale(min: 0, max: 1500),
                    ),
                    'group': Variable(
                      accessor: (Map datum) => datum['group'].toString(),
                    ),
                  }, 
                  
                  
                  marks: [
                    AreaMark(
                      position:
                          Varset('day') * Varset('value') / Varset('group'),
                      shape: ShapeEncode(value: BasicAreaShape(smooth: true)),
                      gradient: GradientEncode(
                        variable: 'group',
                        values: [
                          const LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(204, 128, 255, 165),
                              Color.fromARGB(204, 1, 191, 236),
                            ],
                          ),

 const LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(204, 0, 221, 255),
                              Color.fromARGB(204, 77, 119, 255),
                            ],
                          ),
                          const LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(204, 55, 162, 255),
                              Color.fromARGB(204, 116, 21, 219),
                            ],
                          ),
                          const LinearGradient(
                            begin: Alignment(0, 0),
                            end: Alignment(0, 1),
                            colors: [
                              Color.fromARGB(204, 255, 0, 135),
                              Color.fromARGB(204, 135, 0, 157),
                            ],
                          ),

                        ]))]
                          
                          
                          
                          ))


                             ])
                            )
                  ],
                ),
              ) 
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: expenses.length,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () async {
                      await ExpensesDetailsCard()
                          .buildDialog(context, expenses[index]);
                      //print("Clicou");
                    },                    child: Container(
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
                                ' ${expenses[index].name!}',
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

}
