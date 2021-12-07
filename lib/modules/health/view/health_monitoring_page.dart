import 'package:flutter/material.dart';

class HealthMonitoringPage extends StatelessWidget {
  const HealthMonitoringPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Theo dõi sức khoẻ',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
}
