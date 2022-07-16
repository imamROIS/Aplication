import 'package:flutter/material.dart';
import 'package:rumusku/model/menuapp.dart';
import 'package:rumusku/view/home.dart';

class segitiga extends StatefulWidget {
  const segitiga({Key? key}) : super(key: key);

  @override
  _segitigaState createState() => _segitigaState();
}

class _segitigaState extends State<segitiga> {
  final xsisi1 = TextEditingController();
  final xsisi2 = TextEditingController();
  final xalas = TextEditingController();
  final xtinggi = TextEditingController();

  String segitigakeliling = '';
  String segitigaluas = '';

  onSegitigakeliling() {
    setState(() {
      var sisi1 = double.parse(xsisi1.text);
      var sisi2 = double.parse(xsisi2.text);
      var alas = double.parse(xalas.text);

      var ststs = sisi1 + sisi2 + alas;
      segitigakeliling = ststs.toString();
    });
  }

  onSegitigaluas() {
    setState(() {
      var alas = double.parse(xalas.text);
      var tinggi = double.parse(xtinggi.text);

      var aktbd = alas * tinggi / 2;
      segitigaluas = aktbd.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Segitiga'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.blue]),
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
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/segitiga.png'),
                  ),
//Note - Start
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
                    child: Text(
                      'Gunakan tanda " . " untuk bilangan desimal. \n',
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
                                controller: xsisi1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan sisi ke-1',
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
                                controller: xsisi2,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan Sisi ke-2',
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
                                controller: xalas,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan sisi alas',
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
                                controller: xtinggi,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan sisi tinggi',
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
// Menghitung Keliling Segitiga - Start
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
                                onPressed: onSegitigakeliling,
                                child: Text(
                                  'Keliling ',
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
                                "$segitigakeliling",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Keliling Seegitiga - End
// -------
// Menghitung Luas Segitiga - Start
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
                                onPressed: onSegitigaluas,
                                child: Text(
                                  'Luas ',
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
                                "$segitigaluas",
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
// Menghitung Luas Segitiga - End
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
