import 'package:flutter/material.dart';
import 'package:flutter_widgets/screens/buttons_screen.dart';
import 'package:flutter_widgets/screens/cards_screen.dart';
import 'package:flutter_widgets/screens/colum_rows_screen.dart';
import 'package:flutter_widgets/screens/home_screen.dart';
import 'package:flutter_widgets/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets · Umbreon',
      theme: AppTheme.umbreon,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/buttons': (context) => ButtonsScreen(),
        '/cards': (context) => CardsScreen(),
        '/columnsrow': (context) => ColumnRowsScreen(),
      },
    );
  }
}
