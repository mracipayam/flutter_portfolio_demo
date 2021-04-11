import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              radius: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('avatar.png'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Murat Han ACIPAYAM",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Software Developer at EMTESAN",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "mracipayam@gmail.com",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Connect With Me",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    'github.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    htmlOpenLinkedin();
                  },
                  child: Image.asset(
                    'linkedin.png',
                    height: 65,
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    htmlOpenTwitter();
                  },
                  child: Image.asset(
                    'twitter.png',
                    height: 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                htmlSeeResume();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [const Color(0xffA2834D), const Color(0xffBC9A5F)],
                  ),
                ),
                child: Text(
                  "See the Resume",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Made with Flutter Web!",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}

void htmlOpenGithub() {
  String url = "https://github.com/mracipayam";
  html.window.open(url, 'github');
}

void htmlOpenLinkedin() {
  String url = "https://www.linkedin.com/in/murathanacipayam/";
  html.window.open(url, 'linkedin');
}

void htmlOpenTwitter() {
  String url = "https://twitter.com/mracipayam";
  html.window.open(url, 'twitter');
}

void htmlSeeResume() {
  String url = "https://www.linkedin.com/in/murathanacipayam/";
  html.window.open(url, 'resume');
}
