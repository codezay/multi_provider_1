import 'package:flutter/material.dart';
import 'package:multi_provider_1/home.dart';
// import 'package:multi_provider_1/pages/settings.dart';
import 'package:multi_provider_1/providers/counter_provider.dart';
import 'package:multi_provider_1/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      builder: (context, child) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData.dark(),
          theme: themeProvider.theme,
          home: const HomePage(title: 'Home Page'),
        );
      },
    );
  }
}
