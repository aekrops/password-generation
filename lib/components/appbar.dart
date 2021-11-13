import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget appBar() => DefaultTabController(
    length: 3,
    child: AppBar(
        title: const Text(""),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(69, 104, 220, 1),
                    Color.fromRGBO(176, 106, 179, 1),
                  ]
              )
          ),
        ),
        elevation: 20,
        bottom: const TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          tabs: [
            Tab(icon: Icon(Icons.stars), text: "Home"),
            Tab(icon: Icon(Icons.stars), text: 'Passwords'),
            Tab(
              icon: Icon(Icons.settings),
              text: 'Settings',
            )
        ])));
