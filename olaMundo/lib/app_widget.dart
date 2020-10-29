import 'package:flutter/material.dart';
import 'package:olaMundo/app_controller.dart';
import 'package:olaMundo/login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme
              ? Brightness.dark 
              : Brightness.light,
          ),
          home: LoginPage(),
        );
      },
      animation: AppController.instance,
    );
  }
}
