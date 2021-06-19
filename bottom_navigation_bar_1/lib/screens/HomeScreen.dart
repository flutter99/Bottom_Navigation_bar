import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen", style: TextStyle(fontSize: 45, color: Theme.of(context).textSelectionColor, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
