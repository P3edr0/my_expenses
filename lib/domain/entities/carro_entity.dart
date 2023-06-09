/*
Não posso ter imports aqui de bibliotecas, ou métodos como ToJson e FromJson, por serem externos
apenas importações que sejam da mesma camada
- A entidade é criada com base nas regras de negócios 
enquanto a entidade DTO é criada com base em alguma API e nunca o 
contrário ou diferente disso  */

class CarroEntity {
  String placa;
  int qtePortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtePortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtePortas;
  }

  setLogica() {
    if (valorReal > 10000.00) {
      valor *= 2;
    }
  }
}
