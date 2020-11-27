import 'dart:async';
import 'dart:io';

import 'package:alboukam_deliver/app.dart';
import 'package:alboukam_deliver/providers/auth.dart';
import 'package:alboukam_deliver/screens/auth/login.dart';
import 'package:alboukam_deliver/services/screen_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

void _enablePlatformOverrideForDesktop() {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alboukam Deliver',
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true
        )
      ),
      home: AlboukamDeliver(),
      routes: Routes.routes,
    );
  }
}

class Routes {
  Routes._();

  //static variables
  static const String login = '/login';
  static const String home = '/home';
 
  static final routes = <String, WidgetBuilder>{
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => AppScreen(),
  };
}

class AlboukamDeliver extends StatefulWidget {
  @override
  _AlboukamDeliverState createState() => _AlboukamDeliverState();
}

class _AlboukamDeliverState extends State<AlboukamDeliver> {


  @override
  void initState() {
    super.initState();
    startTimer();
  }
  startTimer() {
    var _duration = Duration(milliseconds: 2000);
    return Timer(_duration, navigate);
  }

  navigate() async {
    AuthProvider.isLoggedIn().then((value) {
      if (value != null) {
        Navigator.of(context).pushReplacementNamed(Routes.home);
      } else {
        Navigator.of(context).pushReplacementNamed(Routes.login);
      }
    }, onError: (error) {
      print(error);
    });

  }

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    return Material(
      child: Center(
          child: CircularProgressIndicator()),
    );
  }
}