import 'package:flutter/material.dart';
import 'package:flutter_assistant/routes/app_routes.dart';
import 'package:get/get.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const ListTile(
              title: Text(
                'FLUTTER ASSISTANT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: const Icon(
                Icons.event_note_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'Quản lý thời gian',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              onTap: () {
                Get.toNamed(Routes.TIME);
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: const Icon(
                Icons.paid_outlined,
                color: Colors.black,
              ),
              title: const Text('Quản lý chi tiêu',
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
              onTap: () {
                Get.toNamed(Routes.SPENDING);
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: const Icon(
                Icons.health_and_safety_outlined,
                color: Colors.black,
              ),
              title: const Text('Theo dõi sức khoẻ',
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
              onTap: () {
                Get.toNamed(Routes.HEALTH);
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: const Text('Thông tin',
                  style: TextStyle(color: Colors.black, fontSize: 16.0)),
              onTap: () {
                Get.toNamed(Routes.INFORMATION);
              },
            ),
            const Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
