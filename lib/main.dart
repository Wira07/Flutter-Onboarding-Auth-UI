import 'package:flutter/material.dart';
import 'splashscreen/splash_screen.dart';
import 'login/loginScreen.dart';
import 'signup/SignUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySplash',
      theme: ThemeData(
        primarySwatch: Colors.pink, // Set a primary color theme
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',  // Starting route
      routes: {
        '/': (context) => const SplashScreen(),  // SplashScreen as the initial page
        '/login': (context) => LoginScreen(),  // Route to LoginScreen
        '/signup': (context) => SignUpScreen(),  // Route to SignUpScreen
      },
      debugShowCheckedModeBanner: false, // Remove debug banner
    );
  }
}
