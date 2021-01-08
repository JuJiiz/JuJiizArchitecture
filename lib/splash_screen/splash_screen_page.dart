import 'package:flutter/material.dart';
import 'package:jujiiz_architecture/core/base/base_page.dart';
import 'package:jujiiz_architecture/home_page/home.dart';
import 'package:jujiiz_architecture/splash_screen/splash_screen.dart';

class SplashScreenPage extends BasePage<SplashScreenController> {
  static const routeName = '/';

  SplashScreenPage(BuildContext context, SplashScreenController initController)
      : super(context, initController);

  @override
  void onStateInit() {
    super.onStateInit();
    Navigator.of(context).pushReplacementNamed(HomePage.routeName);
  }

  @override
  Widget initUI(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text('Splash Screen'),
      ),
    );
  }
}
