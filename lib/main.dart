import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // APIのURL
  final _apiUrl = "https://narutodb.xyz/api/character";
  
  @override

  // 初期化
  void initState() {
    super.initState();
    _fetchCharacters();
  }

  // APIからデータを取得
  Future<void> _fetchCharacters() async {
    final response = await Dio().get(_apiUrl);
    print(response);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("NARUTO図鑑"),
      ),
      body: Container(),
    );
  }
}
