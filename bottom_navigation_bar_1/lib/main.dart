import 'package:bottom_navigation_bar_1/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Themes.dart';
import 'package:bottom_navigation_bar_1/Widgets/ChangeTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: Bottombar(),
        );
      });
}
