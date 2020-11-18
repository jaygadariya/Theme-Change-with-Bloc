import 'package:black_mode/bloc/Dark/DarkModeBloc.dart';
import 'package:black_mode/bloc/Dark/DarkModeEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New screen"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: MaterialButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {
              BlocProvider.of<DarkModeBloc>(context)..add(ChangeDarkEvent());
              Navigator.pushNamed(context, "/secondScreen");
            },
            child: Text(
              "Press Me!",
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: 14,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
