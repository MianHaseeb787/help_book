

import 'package:flutter/material.dart';
import 'package:help_book/app_init.dart';
import 'package:help_book/providers/dashboard_provider.dart';
import 'package:help_book/providers/quiz_provider.dart';
import 'package:help_book/utils/theme/theme.dart';
import 'package:provider/provider.dart';
import 'providers/institute_provider.dart';
import 'screens/dashboard/dashboard_screen.dart';

void main() async {
  await AppInit.appInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DashboardProvider()),
        ChangeNotifierProvider(create: (context) => InstituteProvider()),
        ChangeNotifierProvider(create: (context) => QuizProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Help Book',
        theme: lightTheme,
        home: const DashboardScreen(),
      ),
    );
  }
}





















