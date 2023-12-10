import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Notificações',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}