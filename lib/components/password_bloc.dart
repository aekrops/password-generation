import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/components/api.dart';

enum PasswordEvent {easyPassword, mediumPassword, hardPassword}

class PasswordBloc extends Bloc<PasswordEvent, String> {
  String _password = "ok";

  PasswordBloc(String initialState) : super(initialState);

  @override
  Stream<String> mapEventToState(PasswordEvent event) async* {
    if (event == PasswordEvent.easyPassword) {
      _password = await fetchData(8);
    }
    else if (event == PasswordEvent.mediumPassword) {
      _password = await fetchData(12);
    } else if (event == PasswordEvent.hardPassword) {
      _password = await fetchData(20);
    } else {
      _password = await fetchData(6);
    }
    yield _password;
  }
}


