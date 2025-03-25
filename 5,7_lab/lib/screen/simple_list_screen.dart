import 'package:flutter/material.dart';

// Класс экрана с простым списком
class SimpleListScreen extends StatelessWidget {
  const SimpleListScreen({super.key}); // Конструктор с необязательным ключом

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Простой список'), // Заголовок экрана
        backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет фона
      ),
      
      // Основное содержимое экрана - статический ListView
      body: ListView(
        children: const [ // Список дочерних элементов
          // Первый элемент списка
          ListTile(title: Text('Первая строка')),
          // Разделитель толщиной 5 пикселей
          Divider(thickness: 5),
          
          // Второй элемент списка
          ListTile(title: Text('Вторая строка')),
          // Разделитель толщиной 5 пикселей
          Divider(thickness: 5),
          
          // Третий элемент списка
          ListTile(title: Text('Третья строка')),
          // Разделитель толщиной 5 пикселей
          Divider(thickness: 5),
          
          // Четвертый элемент списка
          ListTile(title: Text('Четвёртая строка')),
          // Последний разделитель не добавляем, так как он не нужен после последнего элемента
        ],
      ),
    );
  }
}
