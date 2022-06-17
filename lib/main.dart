import 'package:flutter/material.dart';
import 'package:flutter_tv_maze/screens/search_screen/search_page.dart';

import 'screens/home_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'What to Watch?',
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      theme: ThemeData(useMaterial3: true, brightness: Brightness.light),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (context) => const HomePage(),
        SearchPage.routeName: (context) => const SearchPage(),
      },
    );
  }
}
