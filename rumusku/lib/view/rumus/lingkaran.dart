import 'package:flutter/material.dart';
import 'package:rumusku/model/menuapp.dart';
import 'package:rumusku/view/home.dart';

class lingkaran extends StatefulWidget {
  const lingkaran({Key? key}) : super(key: key);

  @override
  _lingkaranState createState() => _lingkaranState();
}

class _lingkaranState extends State<lingkaran> {
  final jarijari = TextEditingController();
  final diameter = TextEditingController();
  String lingkaranjari = '';
  String lingkarandiameter = '';
  String lingkarankeliling = '';
  String lingkaranluas = '';

  onJari() {
    setState(() {
      var diam = double.parse(diameter.text);
      var dbd = diam / 2;
      lingkaranjari = dbd.toString();
    });
  }

  onLDiameter() {
    setState(() {
      var jari = double.parse(jarijari.text);
      var dkr = 2 * jari;
      lingkarandiameter = dkr.toString();
    });
  }

  onLkeliling() {
    setState(() {
      var jari = double.parse(jarijari.text);

      var dkpkr = 2 * 3.14 * jari;
      lingkarankeliling = dkpkr.toString();
    });
  }

  onLluas() {
    setState(() {
      var jari = double.parse(jarijari.text);

      var pkrkr = 3.14 * jari * jari;
      lingkaranluas = pkrkr.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lingkaran'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.yellow, Colors.blue]),
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
                        color: Colors.yellow,
                        border: Border.all(width: 10, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        )),
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
                                controller: jarijari,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan jari-jari "r" ',
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
                                controller: diameter,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan diameter "d" ',
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
// Menghitung Jari-jari "r" - Start
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
                                onPressed: onJari,
                                child: Text(
                                  'Jari-jari :',
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
                                "= $lingkaranjari",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Jari-jari "r" - End
// -------
// Menghitung Diameter Lingkaran - Start
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
                                onPressed: onLDiameter,
                                child: Text(
                                  'Diameter',
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
                                "= $lingkarandiameter",
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
// Menghitung Diameter Lingkaran - End
//------
// Menghitung Keliling Lingkaran - Start
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
                                onPressed: onLkeliling,
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
                                "= $lingkarankeliling",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Keliling Lingkaran - End
//------
// Menghitung Luas Lingkaran - Start
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
                                onPressed: onLluas,
                                child: Text(
                                  'Luas :',
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
                                "= $lingkaranluas",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Luas Lingkaran - End
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
