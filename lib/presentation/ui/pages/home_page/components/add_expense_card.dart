import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/presentation/ui/controller/add_expense_controller.dart';

class AddExpenseCard {
  final DateFormat date = DateFormat('EEEE - d MMMM y');
  final DateFormat dateShort = DateFormat('d/M/y');

  Future buildDialog(context, addExpenseController) async {
    return await showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((_) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10)),
                height: 535,
                width: 200,
                child: Column(
                  children: [
                    const Text(
                      "Adicionar Despesa",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          overflow: TextOverflow.clip),
                    ),
                    const Text(
                      "Nome",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(10)),
                        width: 250,
                        height: 30,
                        child: TextFormField(
                            cursorColor: Colors.white,
                            controller: addExpenseController.nameController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 0, bottom: 17)))),
                    const Text(
                      "Descrição",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(10)),
                        width: 250,
                        height: 30,
                        child: TextFormField(
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            controller:
                                addExpenseController.descriptionController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 0, bottom: 17)))),
                    const Text(
                      "Data",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    DateSelect(addExpenseController: addExpenseController),
                    const SizedBox(height: 10),
                    const Text(
                      "Valor",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(10)),
                        width: 100,
                        height: 30,
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: addExpenseController.valueController,
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 0, bottom: 17)))),
                    const Text(
                      "Forma de pagamento",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    SizedBox(
                        height: 96,
                        width: 250,
                        child: PaymmentCheckBox(
                          context: context,
                          addExpenseController: addExpenseController,
                        )),
                    const Text(
                      "Tipo de gasto",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          overflow: TextOverflow.clip),
                    ),
                    ExpenseTypesListWidget(
                        addExpenseController: addExpenseController),
                    TextButton(
                        onPressed: () {
                          addExpenseController.addExpense();
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Text(
                            "Salvar",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                overflow: TextOverflow.clip),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}

class PaymmentCheckBox extends StatefulWidget {
  const PaymmentCheckBox(
      {super.key,
      required BuildContext context,
      required this.addExpenseController});
  final AddExpenseController addExpenseController;

  @override
  State<PaymmentCheckBox> createState() => _PaymmentCheckBoxState();
}

class _PaymmentCheckBoxState extends State<PaymmentCheckBox> {
  bool? isChecked = true;
  @override
  Widget build(context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  splashRadius: 1,
                  onPressed: (() {
                    setState(() {
                      widget.addExpenseController.paymmentCheckList[0] =
                          !widget.addExpenseController.paymmentCheckList[0];
                      widget.addExpenseController.paymmentCheckList[1] = false;
                      widget.addExpenseController.paymmentCheckList[2] = false;
                    });
                  }),
                  icon: widget.addExpenseController.paymmentCheckList[0]
                      ? const Icon(
                          Icons.check_box,
                          color: Colors.green,
                          grade: 0.0,
                        )
                      : const Icon(
                          Icons.rectangle_outlined,
                          color: Colors.green,
                          grade: 0.0,
                        )),
              Text(
                "PIX",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                    overflow: TextOverflow.clip),
              ),
              IconButton(
                  splashRadius: 1,
                  onPressed: (() {
                    setState(() {
                      widget.addExpenseController.paymmentCheckList[1] =
                          !widget.addExpenseController.paymmentCheckList[1];
                      widget.addExpenseController.paymmentCheckList[0] = false;
                      widget.addExpenseController.paymmentCheckList[2] = false;
                    });
                  }),
                  icon: widget.addExpenseController.paymmentCheckList[1]
                      ? const Icon(
                          Icons.check_box,
                          color: Colors.green,
                          grade: 0.0,
                        )
                      : const Icon(
                          Icons.rectangle_outlined,
                          color: Colors.green,
                          grade: 0.0,
                        )),
              Text(
                "DINHEIRO",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                    overflow: TextOverflow.clip),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  splashRadius: 1,
                  onPressed: (() {
                    setState(() {
                      widget.addExpenseController.paymmentCheckList[0] = false;
                      widget.addExpenseController.paymmentCheckList[1] = false;
                      widget.addExpenseController.paymmentCheckList[2] =
                          !widget.addExpenseController.paymmentCheckList[2];
                    });
                  }),
                  icon: widget.addExpenseController.paymmentCheckList[2]
                      ? const Icon(
                          Icons.check_box,
                          color: Colors.green,
                          grade: 0.0,
                        )
                      : const Icon(
                          Icons.rectangle_outlined,
                          color: Colors.green,
                          grade: 0.0,
                        )),
              Text(
                "CARTÃO",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                    overflow: TextOverflow.clip),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpenseTypesListWidget extends StatefulWidget {
  final AddExpenseController addExpenseController;

  const ExpenseTypesListWidget({super.key, required this.addExpenseController});

  @override
  State<ExpenseTypesListWidget> createState() => _ExpenseTypesListWidgetState();
}

class _ExpenseTypesListWidgetState extends State<ExpenseTypesListWidget> {
  final List<ExpenseTypes> expenseTypes = [
    ExpenseTypes(legend: "Lazer", icon: Icons.sports_soccer),
    ExpenseTypes(legend: "Saúde", icon: Icons.favorite),
    ExpenseTypes(legend: "Comida", icon: Icons.restaurant),
    ExpenseTypes(legend: "Mercado", icon: Icons.shopping_cart),
    ExpenseTypes(legend: "Vestuário", icon: Icons.shopping_bag_outlined),
    ExpenseTypes(legend: "Automóvel", icon: Icons.directions_car),
    ExpenseTypes(legend: "Educação", icon: Icons.book),
    ExpenseTypes(legend: "Casa", icon: Icons.home),
  ];
  int selected = -1;
  @override
  void initState() {
    if (widget.addExpenseController.expenseTypes.icon != null) {
      selected = expenseTypes.indexOf(expenseTypes.singleWhere((element) =>
          element.legend == widget.addExpenseController.expenseTypes.legend));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        separatorBuilder: (context, index) => Container(
          width: 1,
          height: 5,
          color: Colors.transparent,
        ),
        itemBuilder: (BuildContext context, index) {
          return SizedBox(
              width: 100,
              height: 14,
              child: ListTile(
                  onTap: () {
                    setState(() {
                      selected = index;
                      widget.addExpenseController.expenseTypes =
                          expenseTypes[index];
                    });
                  },
                  contentPadding: const EdgeInsets.all(0),
                  subtitle: Text(
                    expenseTypes[index].legend!,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: selected != index ? Colors.white : Colors.green,
                      overflow: TextOverflow.clip,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  subtitleTextStyle: const TextStyle(color: Colors.red),
                  title: Icon(
                    expenseTypes[index].icon,
                    color: selected != index ? Colors.white : Colors.green,
                  )));
        },
      ),
    );
  }
}

class DateSelect extends StatefulWidget {
  const DateSelect({super.key, required this.addExpenseController});

  final AddExpenseController addExpenseController;
  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2030));

        if (pickedDate != null) {
          //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
          setState(() {
            widget.addExpenseController.dateController =
                TextEditingController(text: formattedDate);
          });

          log(formattedDate);
        }
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.green[700], borderRadius: BorderRadius.circular(10)),
        width: 250,
        height: 30,
        child: Row(
          children: [
            const Icon(
              Icons.calendar_today_outlined,
              color: Colors.white,
              size: 25,
            ),
            const SizedBox(width: 50),
            Text(
              widget.addExpenseController.dateController.text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  overflow: TextOverflow.clip),
            ),
            const SizedBox(width: 45),
            const Icon(
              Icons.arrow_drop_down_rounded,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}

class ExpenseTypes {
  String? legend;
  IconData? icon;

  ExpenseTypes({required this.legend, required this.icon});
  ExpenseTypes.empty({this.legend, this.icon});
}
