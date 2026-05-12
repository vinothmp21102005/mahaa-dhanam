import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/splash_screen.dart';
import 'screens/landing_page.dart';
import 'screens/login_page.dart';
import 'screens/main_container.dart';

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

void main() {
  runApp(const MahaaDhanamApp());
}

class MahaaDhanamApp extends StatelessWidget {
  const MahaaDhanamApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          title: 'Mahaa Dhanam',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: currentMode,
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/landing': (context) => const LandingPage(),
            '/login': (context) => const LoginPage(),
            '/home': (context) => const MainContainer(),
          },
        );
      },
    );
  }
}

