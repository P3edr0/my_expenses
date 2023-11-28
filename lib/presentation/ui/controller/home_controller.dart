import 'dart:developer';

class HomeController {
  List<String> weekDays = [];

  expenseDateTranslater(DateTime date) {
    weekDays = [];
    for (var i = 0; i < 7; i++) {
      if (date.weekday == 1) {
        weekDays.insert(0, "S");
      }
      if (date.weekday == 2) {
        weekDays.insert(0, "T");
      }
      if (date.weekday == 3) {
        weekDays.insert(0, "Q");
      }
      if (date.weekday == 4) {
        weekDays.insert(0, "Q");
      }
      if (date.weekday == 5) {
        weekDays.insert(0, "S");
      }
      if (date.weekday == 6) {
        weekDays.insert(0, "S");
      }
      if (date.weekday == 7) {
        weekDays.insert(0, "D");
      }

      date = date.subtract(const Duration(hours: 24));
    }
    log(weekDays.toString(), name: 'Dias da semana:');
  }
}
