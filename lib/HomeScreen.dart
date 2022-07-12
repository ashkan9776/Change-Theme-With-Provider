import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:theme_change_provider/ThemeChangeProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final _themeChangeProvider =
        Provider.of<ThemeChangeProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ("Change Theme Provider"),
        ),
        leading: IconButton(
          onPressed: () {
            _themeChangeProvider.darkTheme = !_themeChangeProvider.darkTheme;
          },
          icon: Icon(
              _themeChangeProvider.darkTheme ? Icons.dark_mode : Icons.sunny),
        ),
      ),
    );
  }
}
