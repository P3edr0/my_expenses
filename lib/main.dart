import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'presentation/ui/pages/home_page/home_page.dart';

void main(List<String> args) {
  Intl.defaultLocale = 'pt_BR';
  runApp(const MyExpenses());
}

class MyExpenses extends StatelessWidget {
  const MyExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('pt', 'BR'),
        Locale(
          'en',
        ),
      ],
      home: HomePage(),
    );
  }
}
