import 'package:flutter/material.dart';
import 'package:jujiiz_architecture/core/constants.dart';
import 'package:jujiiz_architecture/home_page/home.dart';
import 'package:jujiiz_architecture/splash_screen/splash_screen.dart';
import 'package:jujiiz_architecture/testing_repository.dart';
import 'package:provider/provider.dart';

class JuJiizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: app_name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreenPage.routeName,
      routes: <String, WidgetBuilder>{
        SplashScreenPage.routeName: (context) => SplashScreenPage(
              context,
              SplashScreenController(),
            ),
        HomePage.routeName: (context) => HomePage(
              context,
              HomeController(Provider.of<TestingRepository>(context)),
            ),
      },
    );
  }
}
