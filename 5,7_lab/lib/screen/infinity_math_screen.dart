import 'package:flutter/material.dart';
import 'dart:math';

// Класс экрана с бесконечным списком степеней числа 2
class InfinityMathScreen extends StatefulWidget {
  const InfinityMathScreen({super.key}); 

  @override
  State<InfinityMathScreen> createState() => _InfinityMathScreenState();
}

// Класс состояния для InfinityMathScreen
class _InfinityMathScreenState extends State<InfinityMathScreen> {
  // Список для хранения строк с вычисленными степенями числа 2
  final List<String> _items = [];

  @override
  // Метод build, описывающий UI компонент
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель приложения
      appBar: AppBar(
        title: const Text('Степени числа 2'), // Заголовок экрана
        backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет фона
      ),
      
      // Основное содержимое экрана - ListView с динамической подгрузкой
      body: ListView.builder(
        itemBuilder: (context, i) {
          // Каждый нечетный элемент будет разделителем
          if (i.isOdd) return const Divider();
          
          // Вычисляем реальный индекс элемента (делим на 2, так как каждый второй элемент - разделитель)
          final index = i ~/ 2;
          
          // Если достигли конца текущего списка, добавляем новые вычисленные значения
          if (index >= _items.length) {
            // Добавляем сразу две новые степени числа 2
            _items.addAll([
              '2^$index = ${pow(2, index)}', // Текущая степень
              '2^${index + 1} = ${pow(2, index + 1)}' // Следующая степень
            ]);
          }
          
          // Возвращаем элемент списка с текстом
          return ListTile(
            title: Text(_items[index]), // Отображаем строку с вычисленной степенью
          );
        },
      ),
    );
  }
}
