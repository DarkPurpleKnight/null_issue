import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(NullIssueApp());
}

class NullIssueApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Null issue',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('de', ''),
      ],
      home: Scaffold(
        drawer: Drawer(
          child: Row(
            children: [Text(AppLocalizations.of(context)!.helloWorld)],
          ),
        ),
      ),
    );
  }
}
