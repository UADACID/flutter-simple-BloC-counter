import 'dart:async';
import 'package:flutter_simple_bloc/Interface/BlockProvider.dart';

class CounterBloc implements BlocBase {
  int _counter = 0;

  StreamController<int> _counterController = new StreamController<int>();
  Sink<int> get _indAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  StreamController<int> _incrementController = new StreamController<int>();
  Sink<int> get incrementCounter => _incrementController.sink;

  CounterBloc() {
    _counter = 0;
    _incrementController.stream.listen(_increment);
  }

  @override
  void dispose() {
    _counterController.close();
    _incrementController.close();
  }

  void _increment(data) {
    _counter = _counter + 1;
    _indAdd.add(_counter);
  }
}
