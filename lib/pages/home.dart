import 'package:app/components/password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PasswordBloc, String>(builder: (context, password) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(25.0),
                decoration: boxDecoration(),
                child: Text(password.toString()),
              ),
              Column(
                children: [
                  TextButton(
                    child: const Text("Password"),
                    style: textDecoration(),
                    onPressed: () =>
                        BlocProvider.of<PasswordBloc>(context, listen: false)
                            .add(PasswordEvent.hardPassword),
                  ),
                  TextButton(
                    child: const Text("Pin code"),
                    style: textDecoration(),
                    onPressed: () =>
                        BlocProvider.of<PasswordBloc>(context, listen: false)
                            .add(PasswordEvent.hardPINCode),
                  ),
                  TextButton(
                    child: const Text("Hex"),
                    style: textDecoration(),
                    onPressed: () =>
                        BlocProvider.of<PasswordBloc>(context, listen: false)
                            .add(PasswordEvent.mediumHex),
                  ),
                ],
              )
            ],
          ),
        );
      });
}
