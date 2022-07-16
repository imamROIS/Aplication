import 'package:flutter/material.dart';
import 'package:rumusku/model/menuapp.dart';
import 'package:rumusku/view/home.dart';

class layanglayang extends StatefulWidget {
  const layanglayang({Key? key}) : super(key: key);

  @override
  _layanglayangState createState() => _layanglayangState();
}

class _layanglayangState extends State<layanglayang> {
  final sisisatu = TextEditingController();
  final sisidua = TextEditingController();
  final diagonalsatu = TextEditingController();
  final diagonaldua = TextEditingController();
  String hasilkelilingLL = '';
  String hasilluasLL = '';

  onLLkeliling() {
    setState(() {
      var s1 = double.parse(sisisatu.text);
      var s2 = double.parse(sisidua.text);
      var dkstsd = s1 + s1 + s2 + s2;
      hasilkelilingLL = dkstsd.toString();
    });
  }

  onLLluas() {
    setState(() {
      var d1 = double.parse(diagonalsatu.text);
      var d2 = double.parse(diagonaldua.text);
      var sdd1dd2 = 0.5 * d1 * d2;
      hasilluasLL = sdd1dd2.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Layang-layang'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyan, Colors.black26]),
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
                  Image.asset(
                    'assets/images/Layang.jpeg',
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 10, 0, 10),
                    child: Text(
                      'Gunakan tanda " . " untuk bilangan desimal',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
// Text Field Untuk Mengisi Nilai - Start
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                right: 20,
                                left: 20,
                              ),
                              child: new TextField(
                                controller: sisisatu,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan sisi 1 (s1)',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                right: 20,
                                left: 20,
                              ),
                              child: new TextField(
                                controller: sisidua,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan sisi 2 (s2) ',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                right: 20,
                                left: 20,
                              ),
                              child: new TextField(
                                controller: diagonalsatu,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan diagonal 1 (d1)',
                                    filled: true,
                                    suffix: Text('cm'),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                right: 20,
                                left: 20,
                              ),
                              child: new TextField(
                                controller: diagonaldua,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    labelText: 'Masukan diagonal 2 (d2) ',
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
// Text Field Untuk Mengisi Nilai - End
// ------
// Menghitung Keliling Layang-layang - Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: onLLkeliling,
                                child: Text(
                                  'Keliling :',
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
                                "= $hasilkelilingLL",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Keliling Layang-layang - End
// ------
// Menghitung Luas Layang-layang - Start
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: onLLluas,
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
                                "= $hasilluasLL",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
//Menghitung Luas Layang-layang - End
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
