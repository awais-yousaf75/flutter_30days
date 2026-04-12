import 'package:flutter/material.dart';
import 'package:flutter_30days/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: .light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      initialRoute: "/",
      routes: {
        "/": (context)=>LoginPage()
      },
    );
  }
}