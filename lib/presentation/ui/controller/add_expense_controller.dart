import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meus_gastos/data/dtos/expense_dto.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/domain/entities/user_entity.dart';
import 'package:meus_gastos/presentation/ui/pages/home_page/components/add_expense_card.dart';

class AddExpenseController extends ChangeNotifier {
  UserEntity userEntity = UserEntity();
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController descriptionController = TextEditingController(text: '');
  TextEditingController dateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()));
  TextEditingController valueController =
      TextEditingController(text: 'R\$ 0.0');

  List<bool> paymmentCheckList = [false, false, false];
  ExpenseTypes expenseTypes = ExpenseTypes.empty();

  List<ExpenseEntity> expensesList = [];

  PaymmentType _paymmentTypeTranslate() {
    if (paymmentCheckList[0]) {
      return PaymmentType.pix;
    } else if (paymmentCheckList[1]) {
      return PaymmentType.money;
    } else {
      return PaymmentType.card;
    }
  }

  void addExpense() {
    expensesList.insert(
        0,
        ExpenseDto(
            name: nameController.text,
            value: double.parse(valueController.text.substring(2)),
            description: descriptionController.text,
            date: dateController.text,
            paymmentType: _paymmentTypeTranslate(),
            author: userEntity.name,
            expenseTypes: expenseTypes));
    notifyListeners(); // Notificar os ouvintes sobre a mudança na lista
    emptyExpense();
  }

  void removeExpense(int index) {
    expensesList.removeAt(index);
    notifyListeners(); // Notificar os ouvintes sobre a mudança na lista
  }

  void emptyExpense() {
    userEntity = UserEntity();
    nameController = TextEditingController(text: '');
    descriptionController = TextEditingController(text: '');
    dateController = TextEditingController(
        text: DateFormat('dd-MM-yyyy').format(DateTime.now()));
    valueController = TextEditingController(text: 'R\$ 0.0');

    paymmentCheckList = [false, false, false];
    expenseTypes = ExpenseTypes.empty();
  }
}
