import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathScreen extends StatefulWidget {
  const InfinityMathScreen({super.key});

  @override
  State<InfinityMathScreen> createState() => _InfinityMathScreenState();
}

class _InfinityMathScreenState extends State<InfinityMathScreen> {
  final List<String> _items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Степени числа 2'), backgroundColor: Color.fromARGB(255, 157, 28, 221),),
      body: ListView.builder(
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();
          
          final index = i ~/ 2;
          if (index >= _items.length) {
            _items.addAll([
              '2^$index = ${pow(2, index)}',
              '2^${index + 1} = ${pow(2, index + 1)}'
            ]);
          }
          
          return ListTile(title: Text(_items[index]));
        },
      ),
    );
  }
}