import 'package:flutter/material.dart';
import 'package:flutter_assistant/routes/app_pages.dart';
import 'package:flutter_assistant/routes/app_routes.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assistant',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: Routes.TIME,
      getPages: routePages,
    );
  }
}
