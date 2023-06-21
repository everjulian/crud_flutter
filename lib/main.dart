import 'package:crud/pages/add_name_page.dart';
import 'package:crud/pages/edit_name_page.dart';
import 'package:crud/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.orange,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage(),
      },
    );
  }
}
