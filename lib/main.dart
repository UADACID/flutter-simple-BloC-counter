import 'package:flutter/material.dart';
import 'package:flutter_simple_bloc/Blocs/CounterBloc.dart';
import 'package:flutter_simple_bloc/Interface/BlockProvider.dart';
import 'package:flutter_simple_bloc/Screens/BlocHomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        bloc: CounterBloc(),
        child: BlocHomePage(),
      ),
    );
  }
}
