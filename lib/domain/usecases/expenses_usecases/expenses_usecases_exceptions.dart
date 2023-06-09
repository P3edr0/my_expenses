abstract class IExpensesUsercaseExceptions implements Exception {
  IExpensesUsercaseExceptions(
      [String message = "Falha na manipulação do débito."]);
}

class FetchUsercaseException extends IExpensesUsercaseExceptions {
  @override
  FetchUsercaseException(
      [String message = "Erro ao fazer a busca dos débitos."])
      : super(message);
}

class UpdateUsercaseException extends IExpensesUsercaseExceptions {
  @override
  UpdateUsercaseException(
      [String message = "Erro ao fazer a atualização do débito."])
      : super(message);
}

class DeleteUsercaseException extends IExpensesUsercaseExceptions {
  @override
  DeleteUsercaseException([String message = "Erro ao deletar o débito."])
      : super(message);
}

class InsertUsercaseException extends IExpensesUsercaseExceptions {
  @override
  InsertUsercaseException(
      [String message = "Erro ao fazer a inserção dos débitos."])
      : super(message);
}

class DataExpenseException extends IExpensesUsercaseExceptions {
  @override
  DataExpenseException([String message = "Dado inválido."]) : super(message);
}

class BadRequestExpenseException extends IExpensesUsercaseExceptions {
  @override
  BadRequestExpenseException([String message = "Falha ao tentar acessar rota."])
      : super(message);
}

class NotFoundExpenseException extends IExpensesUsercaseExceptions {
  @override
  NotFoundExpenseException([String message = "Débito não encontrado"])
      : super(message);
}
