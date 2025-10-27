import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String username;
  const WelcomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: cs.primaryContainer,
        foregroundColor: cs.onPrimaryContainer,
      ),
      body: Center(
        child: Card(
          elevation: 4,
          color: cs.surface,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Welcome, $username!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: cs.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
