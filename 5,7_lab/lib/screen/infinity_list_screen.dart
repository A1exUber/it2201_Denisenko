import 'package:flutter/material.dart';

class InfinityListScreen extends StatefulWidget {
  const InfinityListScreen({super.key});

  @override
  State<InfinityListScreen> createState() => _InfinityListScreenState();
}

class _InfinityListScreenState extends State<InfinityListScreen> {
  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Бесконечный список'), backgroundColor: Color.fromARGB(255, 157, 28, 221),),
      body: ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider(thickness: 3, color: Color.fromARGB(255, 157, 28, 221),);
          
          final index = i ~/ 2;
          if (index >= _items.length) {
            _items.addAll(['Строка $index', 'Строка ${index + 1}']);
          }
          
          return ListTile(title: Text(_items[index]));
        },
      ),
    );
  }
}