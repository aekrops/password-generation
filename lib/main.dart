import 'package:flutter/material.dart';
import 'package:app/pages/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/pages/stared_passwords.dart';
import 'components/appbar.dart';
import 'components/password_bloc.dart';

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
      home: BlocProvider(
        create: (context) => PasswordBloc("Welcome!"),
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(80), child: appBar()),
              body: const TabBarView(
                children: [
                  HomePage(),
                  StaredPage(),
                ],
              ),
            )),
      ),
    );
  }
}
