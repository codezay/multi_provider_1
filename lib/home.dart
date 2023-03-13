import 'package:flutter/material.dart';
import 'package:multi_provider_1/pages/counter.dart';
import 'package:multi_provider_1/pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Counter Page'),
            onTap: () {
              debugPrint('Counter page taped');
              final route = MaterialPageRoute(
                builder: (_) => const CounterPage(title: 'Counter Page'),
              );
              Navigator.push(context, route);
            },
          ),
          ListTile(
            title: const Text('Settings Page'),
            onTap: () {
              debugPrint('Settings page taped');
              final route = MaterialPageRoute(
                builder: (_) => const SettingsPage(title: 'Settings Page'),
              );
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}
