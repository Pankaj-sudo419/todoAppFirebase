import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:todoapp/pages/homepage.dart';
import 'package:todoapp/pages/signin.dart';
import 'package:todoapp/service/api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD-c8mNokDc9JlIU5xWFU9kfWaRnlzx2yo",
      appId: "1:99370203511:web:e51dc911687f3668a24972",
      messagingSenderId: "99370203511",
      projectId: "todoapp-bbe5a",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  void signup() async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: "pankaj@gmail.com", password: "pankaj");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    fetchData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SignInPage(),
      //home: SignUpPage1(),
      //home: AddToDoPage1(),
      //home: HomePage(),
      home: SignInPage(),
    );
  }
}
