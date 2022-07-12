import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change_provider/HomeScreen.dart';
import 'package:theme_change_provider/ThemeChangeProvider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<ThemeChangeProvider>(
      // builder: (_) => ThemeChangeProvider(),
      create: (_) => ThemeChangeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChangeProvider(),
      child: Builder(builder: ((context) {
        final _themeService = Provider.of<ThemeChangeProvider>(context);
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.indigo,
                brightness: _themeService.darkTheme
                    ? Brightness.dark
                    : Brightness.light),
          ),
          home: HomeScreen(),
        );
      })),
    );
  }
}
