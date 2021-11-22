import 'package:flutter/material.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) =>
      Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: boxDecoration(),
            child: Column(
              children: [
                const Text("Password contains:"),
                checkBoxTile(context,"differences in register", _checked, changeState),
                checkBoxTile(context,"special characters", _checked, changeState),
                checkBoxTile(context,"Password contains", _checked, changeState),
              ],
            ),
          ),
        ],
      );

  changeState(bool value) {
    setState(() {
      _checked = value;
    });
  }
}

Widget checkBoxTile(BuildContext context, String text ,bool checked, onPressed) =>
    Column(
      children: [
        CheckboxListTile(
          title: Text(text),
          controlAffinity:
          ListTileControlAffinity.platform,
          value: checked,
          activeColor: Colors.indigo,
          checkColor: Colors.amber,
          onChanged: (value) => onPressed(value)
        )
      ],
    );


BoxDecoration boxDecoration() =>
    BoxDecoration(
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

