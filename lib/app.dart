import 'package:flutter/material.dart';
import 'login/pages/login_register_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.blue,
        ),
      ),
      home: const LoginRegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
