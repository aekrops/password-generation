import 'package:flutter/material.dart';

BoxDecoration boxDecoration() => BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    );

textDecoration() => TextButton.styleFrom(
    padding: const EdgeInsets.all(11),
    primary: Colors.purple.shade100,
    backgroundColor: Colors.purple.shade700);
