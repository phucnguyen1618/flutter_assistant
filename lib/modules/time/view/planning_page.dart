import 'package:flutter/material.dart';

class PlanningPage extends StatelessWidget {
  const PlanningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lập kế hoạch',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
      ),
    );
  }
}
