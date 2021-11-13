import 'package:app/pages/settings.dart';
import 'package:app/pages/stared_passwords.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';

import 'components/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter lab-5',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(80), child: appBar()),
            body: const TabBarView(
              children: [
                HomePage(),
                PasswordsPage(),
                SettingsPage(),
              ],
            ),
          )),
    );
  }
}
