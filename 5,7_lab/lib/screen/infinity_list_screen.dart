import 'package:flutter/material.dart';

class InfinityListScreen extends StatefulWidget {
  const InfinityListScreen({super.key}); 

  @override
  State<InfinityListScreen> createState() => _InfinityListScreenState();
}

class _InfinityListScreenState extends State<InfinityListScreen> {
  // Список для хранения элементов, которые будут отображаться
  final List<String> _items = [];

  @override
  // Метод build, описывающий UI компонент
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель приложения
      appBar: AppBar(
        title: const Text('Бесконечный список'), // Заголовок экрана
        backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет фона
      ),
      
      // Основное содержимое экрана - ListView с динамической подгрузкой
      body: ListView.builder(
        itemBuilder: (context, i) {
          // Каждый нечетный элемент будет разделителем
          if (i.isOdd) return const Divider(
            thickness: 3, // Толщина разделителя
            color: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет
          );
          
          // Вычисляем реальный индекс элемента (делим на 2, так как каждый второй элемент - разделитель)
          final index = i ~/ 2;
          
          // Если достигли конца текущего списка, добавляем новые элементы
          if (index >= _items.length) {
            // Добавляем сразу два новых элемента
            _items.addAll(['Строка $index', 'Строка ${index + 1}']);
          }
          
          // Возвращаем элемент списка с текстом
          return ListTile(
            title: Text(_items[index]), // Отображаем текст элемента
          );
        },
      ),
    );
  }
}
