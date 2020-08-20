import 'package:algo_task/screens/home_screen_registration.dart';
import 'package:algo_task/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import './screens/welcome_screen.dart';
import './screens/login_screen.dart';
import './screens/registration_screen.dart';
import './screens/home_screen_login.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreenLogin.id: (context) => HomeScreenLogin(),
        HomeScreenRegistration.id: (context) => HomeScreenRegistration(),
      },
    );
  }
}
