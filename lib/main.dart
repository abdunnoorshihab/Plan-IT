import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapp_localdatabase_hive/screens/home_page.dart';
import 'package:todoapp_localdatabase_hive/screens/landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box box = await Hive.openBox('todo');

  runApp(MyToDo());
}

class MyToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDO App',

      home: LandingPage(),
    );
  }
}
