import 'package:bottom_navigation_bar_1/Widgets/ChangeTheme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        centerTitle: true,
        title: Text("Profile Screen", style: TextStyle(fontSize: 18, color: Theme.of(context).textSelectionColor),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Change Theme",
                    style: TextStyle(fontSize: 20.0, color: Theme.of(context).textSelectionColor),
                    ),
                    ChangeThemeButtonWidget(),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
