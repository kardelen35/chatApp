import 'package:chat/screens/home_screen.dart';
import 'package:chat/screens/login.dart';
import 'package:chat/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Login App',
          theme: ThemeData(
            primaryColor: Colors.blue,
          ),
          home: HomeScreen(),
          routes: {
            SignUp.routeName: (context) => new SignUp(),
            LoginScreen.routeName: (context) => new LoginScreen(),
            HomeScreen.routeName: (context) => new HomeScreen(),
          }),
    );
  }
}
