import 'package:flutter/material.dart';
import 'package:rumusku/view/rumus/Persegi.dart';
import 'package:rumusku/view/rumus/Persegip.dart';
import 'package:rumusku/view/rumus/belahketupat.dart';
import 'package:rumusku/view/rumus/layanglayang.dart';
import 'package:rumusku/view/rumus/lingkaran.dart';
import 'package:rumusku/view/rumus/segitiga.dart';

class menus extends StatelessWidget {
  const menus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      color: Colors.black12,
      position: PopupMenuPosition.under,
      tooltip: 'Rumus Lainya :',
      elevation: 10,
      itemBuilder: ((context) => [
            PopupMenuItem(
                value: 0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return persegip();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Persegi panjang',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            PopupMenuDivider(),
            PopupMenuItem(
                value: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return lingkaran();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Lingkaran',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            PopupMenuDivider(),
            PopupMenuItem(
                value: 2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return segitiga();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Segitiga',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            PopupMenuDivider(),
            PopupMenuItem(
                value: 3,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return kotak();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Persegi',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            PopupMenuDivider(),
            PopupMenuItem(
                value: 4,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return layanglayang();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Layang - layang',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
            PopupMenuDivider(),
            PopupMenuItem(
                value: 5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return belahketupat();
                    }));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/dot.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Belah ketupat',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )),
          ]),
    );
  }
}
