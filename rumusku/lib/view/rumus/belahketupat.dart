import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rumusku/model/menuapp.dart';
import 'package:rumusku/view/home.dart';

class belahketupat extends StatefulWidget {
  const belahketupat({Key? key}) : super(key: key);

  @override
  _belahketupatState createState() => _belahketupatState();
}

class _belahketupatState extends State<belahketupat> {
  final diagonal1 = TextEditingController();
  final diagonal2 = TextEditingController();
  final sisi = TextEditingController();
  String carisisi = '';
  String ketupatkeliling = '';
  String ketupatluas = '';

  onketupatsisi() {
    setState(() {
      var diag1 = double.parse(diagonal1.text);
      var diag2 = double.parse(diagonal2.text);
      var setd1 = 0.5 * diag1;
      var setd2 = 0.5 * diag2;
      var sd1kuadrat = setd1 * setd1;
      var sd2kuadrat = setd2 * setd2;
      var d1kd2k = sd1kuadrat + sd2kuadrat;
      var akarkuadrat = sqrt(d1kd2k);

      carisisi = akarkuadrat.toString();
    });
  }

  onketupatkeliling() {
    setState(() {
      var s = double.parse(sisi.text);
      var sk4 = 4 * s;
      ketupatkeliling = sk4.toString();
    });
  }

  onketupatluas() {
    setState(() {
      var diagon1 = double.parse(diagonal1.text);
      var diagon2 = double.parse(diagonal2.text);

      var skd1kd2 = 0.5 * diagon1 * diagon2;
      ketupatluas = skd1kd2.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Belah Ketupat'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.blue]),
          ),
        ),
        actions: [
          IconButton(
              tooltip: 'Home',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return home();
                }));
              },
              icon: Icon(Icons.home_sharp)),
          menus(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    child:
                        Image.asset('assets/images/Belah-Ketupat-Diagonal.jpg'),
                    width: 200,
                    height: 200,
                  ),
//Note - Start
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
                    child: Text(
                      'Gunakan tanda " . " untuk bilangan desimal. \nKosongkan nilai jika tidak ada. ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
//Note - End
// ------
// Text Field Untuk Mengisi Nilai - Start
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              child: new TextField(
                                controller: diagonal1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText:
                                        'Masukan panjang diagonal 1 (d1)',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: new TextField(
                                controller: diagonal2,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText:
                                        'Masukan panjang diagonal 2 (d2)',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child: TextField(
                                controller: sisi,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan panjang sisi ',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
// Menghitung Sisi Belah Ketupat - Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: onketupatsisi,
                                child: Text(
                                  'Sisi :',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          Container(
                            width: 200,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "= $carisisi",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Sisi Belah Ketupat - End
// -------
// Menghitung Keliling Belah Ketupat - Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: onketupatkeliling,
                                child: Text(
                                  'Keliling',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          Container(
                            width: 200,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "= $ketupatkeliling",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Keliling Belah Ketupat - End
//------
// Menghitung Luas Belah Ketupat - Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: onketupatluas,
                                child: Text(
                                  'Luas',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                )),
                          ),
                          Container(
                            width: 200,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "= $ketupatluas",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Luas Belah Ketupat - End
//------
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
