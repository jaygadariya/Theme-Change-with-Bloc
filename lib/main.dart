import 'package:black_mode/NewScreen.dart';
import 'package:black_mode/SecondScreen.dart';
import 'package:black_mode/bloc/Dark/DarkModeBloc.dart';
import 'package:black_mode/bloc/Dark/DarkModeEvent.dart';
import 'package:black_mode/bloc/Dark/DarkModeState.dart';
import 'package:black_mode/utils/common_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DarkModeBloc>(
          create: (context) => DarkModeBloc()..add(GetDarkEvent()),
        )
      ],
      child: BlocBuilder<DarkModeBloc, DarkModeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: ((state is DarkStateLoaded) && state.isDark) ? ThemeMode.dark : ThemeMode.light,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              primarySwatch: Colors.blue,
              textTheme: TextTheme(
                bodyText1: TextStyle(),
                headline3: TextStyle(),
                headline1: TextStyle(),
                headline2: TextStyle(),
                headline4: TextStyle(color: Colors.white),
                headline5: TextStyle(),
                headline6: TextStyle(
                  color: Colors.red,
                ),
              ),
              buttonColor: Colors.black,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            darkTheme: ThemeData(
              scaffoldBackgroundColor: Colors.black54,
              primarySwatch: Colors.cyan,
              buttonColor: Colors.white,
              textTheme: TextTheme(
                bodyText1: TextStyle(),
                headline3: TextStyle(),
                headline1: TextStyle(),
                headline2: TextStyle(),
                headline4: TextStyle(color: Colors.black),
                headline5: TextStyle(),
                headline6: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            routes: {
              "/": (context) => MyHomePage(),
              "/newScreen": (context) => NewScreen(),
              "/secondScreen": (context) => SecondScreen(),
            },
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    Navigator.pushNamed(context, "/newScreen");
    /* Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => NewScreen(),
      ),
    );*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: setDefaultStyle(color: Colors.red),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 50.0,
                    color: Colors.cyan,
                  ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
