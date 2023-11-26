import 'package:meus_gastos/presentation/ui/pages/home_page/components/add_expense_card.dart';

enum PaymmentType { card, money, pix }

class ExpenseEntity {
  String? name;
  double? value;
  String? description;
  String? date;
  String? author;
  PaymmentType? paymmentType;
  ExpenseTypes? expenseTypes;

  ExpenseEntity(
      {this.value,
      this.description,
      this.date,
      this.paymmentType,
      this.author,
      this.name,
      this.expenseTypes});
}
