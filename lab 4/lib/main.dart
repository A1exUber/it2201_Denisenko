import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Для работы с буфером обмена
import 'package:url_launcher/url_launcher.dart'; // Для открытия ссылок и Google Карт

void main() {
  runApp(MyApp()); // Запуск приложения
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(), // Устанавливаем HomeScreen как стартовый экран
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState(); // Создаем состояние для HomeScreen
}

class _HomeScreenState extends State<HomeScreen> {
  int likeCount = 0; // Счетчик лайков
  bool isLiked = false; // Флаг, чтобы лайк можно было поставить только один раз

  void _likePhoto() {
    if (!isLiked) {
      setState(() {
        likeCount++; // Увеличиваем счетчик лайков
        isLiked = true; // Устанавливаем флаг, что лайк поставлен
      });
    } else {
      setState(() {
        likeCount--; // Уменьшаем счетчик лайков
        isLiked = false; // Снимаем флаг, что лайк поставлен
      });
    }
  }

  // Функция для копирования номера телефона в буфер обмена
  void _copyPhoneNumber() async {
    const phoneNumber = '+7 (123) 456-78-90'; // Номер телефона для копирования
    await Clipboard.setData(ClipboardData(text: phoneNumber)); // Копируем номер
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Номер телефона скопирован: $phoneNumber')),
    ); // Показываем уведомление
  }

  // Функция для открытия Google Карт с указанием адреса
  void _openGoogleMaps() async {
    const address = 'Улица Калинина 13, корпус 20, ул. Калинина 13, 13к20, Краснодар, Краснодарский край, 350044'; // Адрес для маршрута
    final url = 'https://www.google.com/maps/search/?api=1&query=$address'; // Ссылка на Google Карты

    if (await canLaunch(url)) {
      await launch(url); // Открываем Google Карты
    } else {
      throw 'Не удалось открыть Google Карты: $url';
    }
  }

  // Функция для копирования ссылки на Google Карты в буфер обмена
  void _shareLocation() async {
    const address = 'Улица Калинина 13, корпус 20, ул. Калинина 13, 13к20, Краснодар, Краснодарский край, 350044'; // Адрес для маршрута
    final url = 'https://www.google.com/maps/search/?api=1&query=$address'; // Ссылка на Google Карты

    await Clipboard.setData(ClipboardData(text: url)); // Копируем ссылку
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Ссылка на карту скопирована: $url')),
    ); // Показываем уведомление
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Общежития КубГАУ'), // Заголовок AppBar
        backgroundColor: Colors.green, // Цвет фона AppBar
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://i.ibb.co/Xr7mScZg/12.png', // Ссылка на изображение
              width: double.infinity, // Растягиваем изображение на всю ширину
              height: 400, // Высота изображения
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min, // Минимальная ширина
                    children: [
                      Text(
                        'Общежитие №20',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 400), // Отступ между текстом и кнопкой лайка
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: isLiked ? Colors.red : Colors.grey, // Цвет сердечка
                        ),
                        onPressed: _likePhoto, // Обработчик нажатия
                      ),
                      Text(
                        '$likeCount', // Отображаем счетчик лайков
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Краснодар, ул. Калинина, 13',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.call, color: Colors.green),
                            onPressed: _copyPhoneNumber, // Копируем номер телефона
                          ),
                          Text(
                            'Позвонить',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.directions, color: Colors.green),
                            onPressed: _openGoogleMaps, // Открываем Google Карты
                          ),
                          Text(
                            'Маршрут',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.share, color: Colors.green),
                            onPressed: _shareLocation, // Копируем ссылку на карту
                          ),
                          Text(
                            'Поделиться',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}