import 'package:calculator/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calculator/app.dart';
import 'package:flutter/services.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(MaterialApp(
    title: 'Calculator',
    debugShowCheckedModeBanner: false,
    theme: MyTheme.ligthTheme,
    //darkTheme: MyTheme.darkTheme,
    themeMode: ThemeMode.system,
    home: const MyApp(),
  ));
}
