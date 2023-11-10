import 'package:meus_gastos/domain/entities/expense_entity.dart';

class Translaters{

String paymmentTranslate(PaymmentType paymmentType){
if (paymmentType == PaymmentType.card) {
return 'Cartão';
  
}
if (paymmentType == PaymmentType.pix) {
return 'Pix';
  
}
if (paymmentType == PaymmentType.money) {
return 'Dinheiro';
  
}else{
  return 'Desconhecido';
}

}

}