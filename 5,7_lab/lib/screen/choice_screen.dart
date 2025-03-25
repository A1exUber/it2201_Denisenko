import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key}); // Конструктор с необязательным ключом

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель приложения (AppBar)
      appBar: AppBar(
        title: const Text('Выбор'), // Заголовок экрана
        backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет фона
      ),
      // Основное содержимое экрана
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Центрирование по вертикали
          children: [
            // Кнопка "Да"
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Да'), // При нажатии возвращаем 'Да'
              child: const Text('Да'), // Текст кнопки
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет кнопки
              ),
            ),
            // Кнопка "Нет"
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'Нет'), // При нажатии возвращаем 'Нет'
              child: const Text('Нет'), // Текст кнопки
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет кнопки
              ),
            ),
          ],
        ),
      ),
    );
  }
}
