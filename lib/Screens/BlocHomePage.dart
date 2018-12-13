import 'package:flutter/material.dart';
import 'package:flutter_simple_bloc/Blocs/CounterBloc.dart';
import 'package:flutter_simple_bloc/Interface/BlockProvider.dart';

class BlocHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc _counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('BloC Pattern')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times'),
            new StreamBuilder(
              stream: _counterBloc.outCounter,
              initialData: 0,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return new Text('${snapshot.data}',
                    style: Theme.of(context).textTheme.display1);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counterBloc.incrementCounter.add(null);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
