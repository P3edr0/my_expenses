import 'package:dartz/dartz.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/domain/repositories/expense_repository.dart';
import 'package:meus_gastos/domain/usecases/expenses_usecases/expenses_usecases_exceptions.dart';

class GetExpenseByIdRepositoryImp implements IGetExpenseByIdRepository {
  @override
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      int id) async {
    return Left(BadRequestExpenseException());
  }
}

class GetAllExpensesRepositoryImp implements IGetAllExpensesRepository {
  @override
  Future<Either<IExpensesUsercaseExceptions, List<ExpenseEntity>>>
      call() async {
    return Left(BadRequestExpenseException());
  }
}

class UpdateExpenseRepositoryImp implements IUpdateExpenseRepository {
  @override
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense) async {
    return Left(BadRequestExpenseException());
  }
}

class DeleteExpenseByIdRepositoryImp implements IDeleteExpenseByIdRepository {
  @override
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      int id) async {
    return Left(BadRequestExpenseException());
  }
}

class CreateExpenseRepositoryImp implements ICreateExpenseRepository {
  @override
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(
      ExpenseEntity expense) async {
    return Left(BadRequestExpenseException());
  }
}
