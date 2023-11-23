import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/presentation/ui/pages/home_page/components/add_expense_card.dart';

class AddExpenseController {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController descriptionController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()));
  TextEditingController valueController =
      TextEditingController(text: 'R\$ 0.0');
  TextEditingController paymmentTypeController =
      TextEditingController(text: '');
  List<bool> paymmentCheckList = [false, false, false];
  ExpenseTypes expenseTypes = ExpenseTypes.empty();

  void updateNameController(String newName) => nameController.text = newName;
  void updateDescriptionController(String newDescription) =>
      descriptionController.text = newDescription;
  void updateDateController(String newDate) => dateController.text = newDate;
  void updateValueController(String newValue) =>
      valueController.text = newValue;
  void updatePaymmentCheckList(List<bool> newPaymmentCheckList) =>
      paymmentCheckList = newPaymmentCheckList;
  void updateexpenseTypes(ExpenseTypes newExpenseTypes) =>
      expenseTypes = newExpenseTypes;
}
