import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreenRegistration extends StatefulWidget {
  static const String id = 'home_screen_registration';
  @override
  _HomeScreenRegistrationState createState() => _HomeScreenRegistrationState();
}

class _HomeScreenRegistrationState extends State<HomeScreenRegistration> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedUser;
  String messageText;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedUser = user;
        print(loggedUser.email);

      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Completed Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '!!Registration Completed!!',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 25.0,
                fontWeight: FontWeight.w900,
                fontFamily: 'Agne',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
