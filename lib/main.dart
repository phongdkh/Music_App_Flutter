import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:music_flutter/main_viewmodel.dart';
import 'package:music_flutter/pages/detail/music_detail_viewmodel.dart';
import 'package:music_flutter/pages/home_page.dart';
import 'package:provider/provider.dart';

import 'base/di/locator.dart';
import 'generated/l10n.dart';

void main() {
  setUpInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainVM>(create: (_) => MainVM()),
        ChangeNotifierProvider<MusicDetailVM>(create: (_) => MusicDetailVM())
      ],
      child: MaterialApp(
        title: 'FULL API - RETROFIT',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('es'), // Spanish
          Locale('vi'), // VietNam
        ],
        home: const HomePage(),
        //home: const MyHomePage(title: 'FETCH API RETROFIT - DIO'),
      ),
    );
  }
}
