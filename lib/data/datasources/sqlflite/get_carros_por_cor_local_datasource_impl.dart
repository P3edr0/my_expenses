// import 'package:aula_02/layers/data/datasources/get_carros_por_cor_datasource.dart';
// import 'package:aula_02/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:meus_gastos/data/datasources/expenses_datasource.dart';
import 'package:meus_gastos/domain/entities/expense_entity.dart';
import 'package:meus_gastos/domain/usecases/expenses_usecases/expenses_usecases_exceptions.dart';

class GetCarrosPorCorLocalDataSourceImpl implements IGetExpenseByIdDatasource {
  @override
  Future<Either<IExpensesUsercaseExceptions, ExpenseEntity>> call(int id) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
