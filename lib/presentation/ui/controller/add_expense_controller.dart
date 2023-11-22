import 'package:flutter/material.dart';

class AddExpenseController {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController descriptionController = TextEditingController(text: '');
  TextEditingController dateController =
      TextEditingController(text: DateTime.now().toString());
  TextEditingController valueController = TextEditingController(text: 'R\$');
  TextEditingController paymmentTypeController =
      TextEditingController(text: '');
  List<bool> paymmentCheckList = [false, false, false];

  void updateNameController(String newName) => nameController.text = newName;
  void updateDescriptionController(String newDescription) =>
      descriptionController.text = newDescription;
  void updateDateController(String newDate) => dateController.text = newDate;
  void updateValueController(String newValue) =>
      valueController.text = newValue;
}
