import 'package:flutter/material.dart';
import 'package:rizaldo_test/view/navigation/main_navigation.dart';
import 'package:rizaldo_test/view/ui/list_news/list_news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {...MainNavigation.routes},
      initialRoute: MainNavigation.splashScreen,
    );
  }
}
