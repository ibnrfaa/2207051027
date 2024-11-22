import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwipeGifScreen(),
    );
  }
}

class SwipeGifScreen extends StatelessWidget {
  // Daftar path untuk GIF
  final List<String> gifPaths = [
    'images/gif1.gif',
    'images/gif2.gif',
    'images/gif3.gif',
  ];

   SwipeGifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geser Bro'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 68, 233, 255),
      ),
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Image.asset(
              gifPaths[index],
              fit: BoxFit.contain,
            ),
          );
        },
        itemCount: gifPaths.length,
        pagination: const SwiperPagination(), 
        control: const SwiperControl(),      
        autoplay: false,               
      ),
    );
  }
}
