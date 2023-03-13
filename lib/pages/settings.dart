import 'package:multi_provider_1/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            debugPrint('Toggle button pressed.');
            themeProvider.toggleTheme();
          },
          child: const Text('Toggle Theme'),
        ),
      ),
    );
  }
}
