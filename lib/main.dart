import 'package:flutter/material.dart';
import 'pages/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conway Pakistan',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          primary: Color(0xFF245091),
          primaryVariant: Colors.blue,
          secondary: Color(0xFF9EC73E),
          secondaryVariant: Color(0xFF9EC730),
          surface: Color(0xFF245091),
          background: Color(0xFFF7F7F7),
          error: Colors.red,
          onPrimary: Colors.blue,
          onSecondary: Color(0xFF9EC730),
          onSurface: Color(0xFF245091),
          onBackground: Color(0xFFF7F7F7),
          onError: Colors.red,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
        primaryColor: const Color(0xFF245091),
        primarySwatch: Colors.blue,
      ),
      home: const IndexPage(),
    );
  }
}

// flutter build web
// firebase deploy --only hosting
// www.conwaypak.com