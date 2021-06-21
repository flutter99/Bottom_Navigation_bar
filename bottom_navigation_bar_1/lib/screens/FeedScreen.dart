import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class FeedPage extends StatelessWidget {
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
            Text("feed_screen".tr(), style: TextStyle(fontSize: 45, color: Theme.of(context).textSelectionColor, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
