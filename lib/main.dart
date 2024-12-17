import 'package:flutter/material.dart';
import 'screens/flash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/manage_account_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HD Music Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const WasteManagementApp(),
        '/profile': (context) => const ProfileScreen(),
        '/manageAccount': (context) => const ManageAccountScreen(),
      },
    );
  }
}
