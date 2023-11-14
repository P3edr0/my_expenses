import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpenseCard {
  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }

  final DateFormat date = DateFormat('EEEE - d MMMM y');
  Future buildDialog(context) async {
    return await showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10)),
                height: 500,
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
                    InkWell(
                      onTap: () async => _datePickerRoute(context, 200),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.green[700],
                            borderRadius: BorderRadius.circular(10)),
                        width: 250,
                        height: 30,
                        child: const Text(
                          "Selecionar Data",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              overflow: TextOverflow.clip),
                        ),

                        // DatePickerDialog(
                        //     initialDate: DateTime.now(),
                        //     firstDate: DateTime.now(),
                        //     lastDate:
                        //         DateTime.now().add(const Duration(days: 90)))
                        // TextFormField(
                        //     cursorColor: Colors.white,
                        //     style: const TextStyle(color: Colors.white),
                        //     decoration: const InputDecoration(
                        //         border: InputBorder.none,
                        //         contentPadding: EdgeInsets.only(
                        //             left: 10, top: 0, bottom: 17)))
                      ),
                    ),
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
                        width: 250,
                        height: 30,
                        child: TextFormField(
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
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 10, top: 0, bottom: 17)))),
                    TextButton(
                        onPressed: () => Navigator.pop(context),
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
                        ))
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
