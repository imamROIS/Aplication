import 'package:flutter/material.dart';
import 'dart:async';
import 'package:rumusku/view/home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  // Mengatur durasi splasscreen - Start
  startSplashScreen(context) {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return home();
        }),
      );
    });
  }

// Mengatur durasi splasscreen - End
  @override
  Widget build(BuildContext context) {
    startSplashScreen(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.dstATop,
            ),
            image: AssetImage(
              'assets/images/splashscreen.png',
            ),
            fit: BoxFit.fill,
            opacity: 12,
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 6, 84, 230), Colors.black12]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Loading...'),
                  CircularProgressIndicator(
                    semanticsLabel: 'Loading...',
                    strokeWidth: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
