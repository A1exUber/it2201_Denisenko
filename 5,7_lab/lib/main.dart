import 'package:flutter/material.dart';

// Импорт пользовательских экранов (страниц) приложения
import 'screen/home_screen.dart';
import 'screen/simple_list_screen.dart';
import 'screen/infinity_list_screen.dart';
import 'screen/infinity_math_screen.dart';
import 'screen/choice_screen.dart';

// Главная функция приложения, которая запускает виджет MyApp
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Объединенная работа', // Заголовок приложения
      initialRoute: '/', // Начальный маршрут при запуске приложения
      routes: { 
        '/': (context) => const HomeScreen(), // Главный экран
        '/simple': (context) => const SimpleListScreen(), // Экран простого списка
        '/infinity': (context) => const InfinityListScreen(), // Экран бесконечного списка
        '/math': (context) => const InfinityMathScreen(), // Экран математики с бесконечным списком
        '/choice': (context) => const ChoiceScreen(), // Экран выбора
      },
    );
  }
}