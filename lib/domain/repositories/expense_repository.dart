import 'package:dartz/dartz.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/domain/usecases/expenses_usecases/expenses_usecases_exceptions.dart';

/* A funçao do repositório é saber buscar um dado, e onde ele vai buscar não importa pois não é a responsabilidade, dado que essa
responsabilidade é do data*/
abstract class IGetExpenseByIdRepository {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(int id);
}

abstract class IGetAllExpensesRepository {
  Future<Either<IExpensesUsercaseExceptions, List<ExpenseEntity>>> call();
}

abstract class IUpdateExpenseRepository {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense);
}

abstract class IDeleteExpenseByIdRepository {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(int id);
}

abstract class ICreateExpenseRepository {
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense);
}
