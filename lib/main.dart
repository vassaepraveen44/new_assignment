import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/loginprovider.dart';
import 'screens/login_screen.dart';
import 'screens/post_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Loginprovider()),
      
      // ChangeNotifierProvider(create: (_) => AuthProvider()..loadAccessToken()),

      // Add more providers here if needed
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  LoginScreen(),
    );
  }
}

