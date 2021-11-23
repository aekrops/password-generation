import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app/components/api.dart';

enum PasswordEvent {easyPassword, mediumPassword, hardPassword,
                    easyPINCode, mediumPINCode, hardPINCode,
                    easyHex, mediumHex, hardHex}

class PasswordBloc extends Bloc<PasswordEvent, String> {
  String _password = "ok";

  PasswordBloc(String initialState) : super(initialState);

  @override
  Stream<String> mapEventToState(PasswordEvent event) async* {
    if (event == PasswordEvent.easyPassword) {
      _password = await fetchPassword(2);
    }
    else if (event == PasswordEvent.mediumPassword) {
      _password = await fetchPassword(3);
    }
    else if (event == PasswordEvent.hardPassword) {
      _password = await fetchPassword(4);
    }
    if (event == PasswordEvent.easyPINCode) {
      _password = await fetchPINCode(4);
    }
    else if (event == PasswordEvent.mediumPINCode) {
      _password = await fetchPINCode(6);
    }
    else if (event == PasswordEvent.hardPINCode) {
      _password = await fetchPINCode(8);
    }
    if (event == PasswordEvent.easyHex) {
      _password = await fetchHex(8);
    }
    else if (event == PasswordEvent.mediumHex) {
      _password = await fetchHex(12);
    }
    else if (event == PasswordEvent.hardHex) {
      _password = await fetchHex(16);
    }
    yield _password;
  }
}


