import 'package:flutter/material.dart';
import 'package:olaMundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Vitor')),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            Center(child: CustomSwitch()),
            Container(
              height: 30,
            ),
            Center(child: CustomSwitch()),
            Container(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
