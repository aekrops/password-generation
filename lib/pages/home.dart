import 'package:flutter/material.dart';
import 'package:app/components/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) =>
      DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(80),
                child: appBar()
            ) ,
            body: Center(
              child: Column(
                children: const <Widget>[],
              ),
            ),
          )
      );
}
