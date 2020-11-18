import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: MaterialButton(
            color: Theme.of(context).buttonColor,
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
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
