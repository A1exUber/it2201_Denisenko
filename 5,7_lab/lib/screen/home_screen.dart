import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Главный экран'), backgroundColor: Color.fromARGB(255, 157, 28, 221),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Простой список'),
              onPressed: () => Navigator.pushNamed(context, '/simple'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 157, 28, 221),
     ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              child: const Text('Бесконечный список'),
              onPressed: () => Navigator.pushNamed(context, '/infinity'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 157, 28, 221),
     ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              child: const Text('Степени числа 2'),
              onPressed: () => Navigator.pushNamed(context, '/math'),
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 157, 28, 221),
     ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Выбор Да/Нет'),
              onPressed: () async {
                final result = await Navigator.pushNamed(context, '/choice');
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