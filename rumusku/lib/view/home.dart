import 'dart:ui';

import 'package:app_popup_menu/app_popup_menu.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:rumusku/view/rumus/Persegi.dart';
import 'package:rumusku/view/rumus/Persegip.dart';
import 'package:rumusku/view/rumus/belahketupat.dart';
import 'package:rumusku/view/rumus/layanglayang.dart';
import 'package:rumusku/view/rumus/lingkaran.dart';
import 'package:rumusku/view/rumus/segitiga.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Title Bar - START
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 84, 230),

        title: Text('Rumusku'),
        centerTitle: true,
        actions: [],
//Title Bar - End
      ),

      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 6, 84, 230),
              Colors.black12,
            ],
          ),
        ),
        child: Column(
//Baris 1-start
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return persegip();
                            }));
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                width: 70,
                                height: 40,
                                decoration:
                                    BoxDecoration(border: Border.all(width: 2)),
                              ),
                              Text(
                                'Persegi Panjang',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return lingkaran();
                            }));
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.circle_sharp,
                                size: 70,
                                color: Colors.blue[800],
                              ),
                              Text(
                                'Lingkaran',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return segitiga();
                            }));
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                child:
                                    Image.asset('assets/images/segitiga.png'),
                              ),
                              Text(
                                'Segitiga',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ))),
                ],
              ),
            ),

//Baris 1-END
//------------------------------
//Baris 2- START
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return kotak();
                            }));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/persegi.png',
                                width: 70,
                                height: 70,
                              ),
                              Text(
                                'Persegi',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return layanglayang();
                            }));
                          },
                          child: Column(
                            children: [
                              Image.asset('assets/images/ll.png'),
                              Text(
                                'Layang-layang',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ))),
                  Container(
                      margin: EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(color: Colors.blue.shade900),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return belahketupat();
                            }));
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/belahketupat.png',
                                width: 70,
                                height: 70,
                              ),
                              Text(
                                'Belah Ketupat',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ))),
                ],
              ),
            ),

            Text(
              'Imam Rois Budiman - 2022',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],

//Baris1-end
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'more',
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return aboutApp();
          }));
        },
        child: Icon(
          Icons.keyboard_arrow_right_rounded,
          size: 40,
        ),
      ),
    );
  }
}

class aboutApp extends StatelessWidget {
  const aboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.amber[50],
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/splashscreen.png',
                ),
                fit: BoxFit.fitWidth),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/giff/underconstruction.gif'),
            fit: BoxFit.contain,
            opacity: 30,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Text(
          'Maaf Masih tahap Pembangunan',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'more',
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.keyboard_arrow_left_rounded,
          size: 40,
        ),
      ),
    );
  }
}
