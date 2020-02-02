import 'package:flutter/material.dart';
import 'package:roomcontrol_ui/screens/control_panel_screen.dart';
import 'package:roomcontrol_ui/screens/room_functioning_screen.dart';
import 'package:roomcontrol_ui/screens/signin_screen.dart';
import 'package:roomcontrol_ui/screens/signup_screen.dart';
import 'package:roomcontrol_ui/screens/splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String usernameController = "Bed Room";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
      routes: <String, WidgetBuilder>{
        '/SplashPanelScreen': (BuildContext context) => new LetsGetStartedSplashScreen(),
        '/SignUpScreen': (BuildContext context) => new SignUp(),
        '/ControlPanelScreen': (BuildContext context) => new ControlPanelScreen(),
        '/RoomFunctioningScreen': (BuildContext context) => new RoomFunctioningScreen(usernameController)
      },

    );
  }
}