import 'package:dartz/dartz.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/domain/usecases/expenses_usecases/expenses_usecases_exceptions.dart';

abstract class IGetExpenseByIdDatasource {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(int id);
}

abstract class IGetAllExpensesDatasource {
  Future<Either<IExpensesUsercaseExceptions, List<ExpenseEntity>>> call();
}

abstract class IUpdateExpenseDatasource {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense);
}

abstract class IDeleteExpenseByIdDatasource {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(int id);
}

abstract class ICreateExpenseDatasource {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense);
}
