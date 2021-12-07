import 'package:flutter/material.dart';

class PlanWidget extends StatelessWidget {
  const PlanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hãy bắt đầu lập kế hoạch cho một ngày\n bận rộn của bạn đi nào.',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
