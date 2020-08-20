import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreenLogin extends StatefulWidget {
  static const String id = 'home_screen_login';
  @override
  _HomeScreenLoginState createState() => _HomeScreenLoginState();
}

class _HomeScreenLoginState extends State<HomeScreenLogin> {
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
        title: Text('Login Completed Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '!!Login Completed!!',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 35.0,
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
