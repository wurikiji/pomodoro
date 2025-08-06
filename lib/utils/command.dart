import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class Command<Arg, Result> extends ChangeNotifier {
  Command(this._action);
  final Future<Result> Function(Arg arg) _action;
  bool _running = false;
  bool get running => _running;
  Either<Object, Result>? _result;
  bool get hasError => _result is Left;
  bool get completed => _result is Right;
  Either<Object, Result>? get result => _result;

  Future<void> call(Arg arg) async {
    if (_running) {
      return;
    }
    _running = true;
    _result = null;
    notifyListeners();
    try {
      final result = await _action(arg);
      _result = Right(result);
    } catch (e) {
      _result = Left(e);
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}
