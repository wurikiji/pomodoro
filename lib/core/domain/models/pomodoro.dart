import 'package:fpdart/fpdart.dart';

class Pomodoro {
  Pomodoro({required this.focusTime, this.breakTime = const None()});

  final Duration focusTime;
  final Option<Duration> breakTime;
}
