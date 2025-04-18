import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smart_ai_savings_app/services/preferences_services.dart'; 
import 'package:smart_ai_savings_app/screens/home_screen.dart';
import 'package:smart_ai_savings_app/screens/auth_screen.dart';
import 'package:smart_ai_savings_app/firebase_options.dart';// Make sure this file exists

class AppEntry extends StatefulWidget {
  const AppEntry({Key? key}) : super(key: key);

  @override
  State<AppEntry> createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  bool _initialized = false;
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  Future<void> _initApp() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    final prefs = PreferencesService();
    bool isLoggedIn = await prefs.getLoginStatus();

    setState(() {
      _initialized = true;
      _isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      return const MaterialApp(
        home: Scaffold(body: Center(child: CircularProgressIndicator())),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart AI Savings Advisor',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: _isLoggedIn ? const HomeScreen() : const AuthScreen(),
    );
  }
}


