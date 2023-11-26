/*DTO SIGNIFICA DATA TRANSFER OBJECT
 A NOSSA PARTE DE DOMAIN NÃO CONHECE AS QUESTÕES DE 
 SERIALIZAÇÃO, SENDO ASSIM A CLASSE CarroEntity PERMANECE
 PURA.
*/

import 'package:meus_gastos/domain/entities/expense_entity.dart';

import '../../presentation/ui/pages/home_page/components/add_expense_card.dart';

class ExpenseDto extends ExpenseEntity {
  @override
  String? name;
  @override
  double? value;
  @override
  String? description;
  @override
  String? date;
  @override
  String? author;
  @override
  PaymmentType? paymmentType;
  @override
  ExpenseTypes? expenseTypes;

  ExpenseDto(
      {required this.name,
      required this.value,
      required this.description,
      required this.date,
      required this.paymmentType,
      required this.author,
      required this.expenseTypes});

  Map toMap() {
    return {
      'author': author,
      'value': value,
      'description': description,
      'date': date,
      'paymmentType': paymmentType,
      'expenseTypes': expenseTypes
    };
  }

  static ExpenseDto fromMap(Map map) {
    return ExpenseDto(
        name: map['name'],
        author: map['author'],
        value: map["value"],
        description: map["description"],
        date: map["date"],
        paymmentType: map["paymmentType"],
        expenseTypes: map['expenseTypes']);
  }
}
