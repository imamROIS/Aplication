import 'package:flutter/material.dart';

import 'package:rumusku/view/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'rumusku',

    theme: ThemeData(
// Mengatur Warna ketika tema cerah - Start
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    ),
// Mengatur Warna ketika tema cerah - End
// ------
//Megatur warna tema ketika gelap - Start
    darkTheme: ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color.fromARGB(221, 32, 32, 32),
    ),
//Megatur warna tema ketika gelap - Start
// ------
//Untuk mengatur tema sesuai sistem - Start
    themeMode: ThemeMode.system,
//Untuk mengatur tema sesuai sistem - End
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
