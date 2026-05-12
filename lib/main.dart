import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/splash_screen.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/main_container.dart';

void main() {
  runApp(const MahaaDhanamApp());
}

class MahaaDhanamApp extends StatelessWidget {
  const MahaaDhanamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahaa Dhanam',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/landing': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const MainContainer(),
      },
    );
  }
}
