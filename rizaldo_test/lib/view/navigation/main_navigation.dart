import 'package:flutter/material.dart';
import 'package:rizaldo_test/view/ui/list_news/list_news.dart';
import 'package:rizaldo_test/view/ui/splash/splash_screen.dart';

class MainNavigation {
  static const String splashScreen = "/splash";
  static const String listNews = "/news";
  static final Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    listNews: (context) => const ListNewsScreen()
  };
}
