import 'package:app/components/password_bloc.dart';
import 'package:app/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<PasswordBloc, String>(
        builder: (context, password) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: boxDecoration(),
                  child: Text(password.toString()),
                ),
                TextButton(
                    child: const Text("Generate"),
                    style: TextButton.styleFrom(
                      primary: const Color.fromRGBO(48, 25, 52, 1),
                      backgroundColor: const Color.fromRGBO(177, 156, 217, 1),
                    ),
                  onPressed: () =>
                      BlocProvider.of<PasswordBloc>(context, listen: false)
                          .add(PasswordEvent.hardPassword),
                ),
                TextButton(
                    child: const Text("Star a password"),
                    style: TextButton.styleFrom(
                      primary: const Color.fromRGBO(69, 104, 220, 1),
                    ),
                    onPressed: () => {}
                ),
              ],
            ),
          );
        }
      );
}

