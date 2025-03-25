import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Центрирование заголовка
        title: const Text('Главный экран'), // Заголовок экрана
        backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет фона
      ),
      
      // Основное содержимое экрана
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Центрирование по вертикали
          children: [
            // Кнопка перехода на экран простого списка
            ElevatedButton(
              child: const Text('Простой список'),
              onPressed: () => Navigator.pushNamed(context, '/simple'), // Навигация по имени маршрута
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221), // Фиолетовый цвет кнопки
              ),
            ),
            
            // Отступ между кнопками
            const SizedBox(height: 20),
            
            // Кнопка перехода на экран бесконечного списка
            ElevatedButton(
              child: const Text('Бесконечный список'),
              onPressed: () => Navigator.pushNamed(context, '/infinity'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Кнопка перехода на экран степеней числа 2
            ElevatedButton(
              child: const Text('Степени числа 2'),
              onPressed: () => Navigator.pushNamed(context, '/math'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Кнопка перехода на экран выбора (Да/Нет) с обработкой результата
            ElevatedButton(
              child: const Text('Выбор Да/Нет'),
              onPressed: () async {
                // Ожидаем результат от экрана выбора
                final result = await Navigator.pushNamed(context, '/choice');
                // Если результат получен, показываем SnackBar с выбором пользователя
                if (result != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Вы выбрали: $result')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 28, 221),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
