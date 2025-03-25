import 'package:flutter/material.dart';

class SimpleListScreen extends StatelessWidget {
  const SimpleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Простой список'), backgroundColor: Color.fromARGB(255, 157, 28, 221),),
      body: ListView(
        children: const [
          ListTile(title: Text('Первая строка')),
          Divider(thickness: 5,),
          ListTile(title: Text('Вторая строка')),
          Divider(thickness: 5,),
          ListTile(title: Text('Третья строка')),
          Divider(thickness: 5,),
          ListTile(title: Text('Четвёртая строка')),
        ],
      ),
    );
  }
}