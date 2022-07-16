import 'package:flutter/material.dart';
import 'package:rumusku/model/menuapp.dart';
import 'package:rumusku/view/home.dart';

class persegip extends StatefulWidget {
  @override
  _persegipState createState() => _persegipState();
}

class _persegipState extends State<persegip> {
  final sisipanjang = TextEditingController();
  final sisilebar = TextEditingController();
  String hasilkeliling = '';
  String hasilluas = '';

  onPpkeliling() {
    setState(() {
      var panjang = double.parse(sisipanjang.text);
      var lebar = double.parse(sisilebar.text);
      var ptlkd = panjang + lebar + panjang + lebar;
      hasilkeliling = ptlkd.toString();
    });
  }

  onPpluas() {
    setState(() {
      var panjang = double.parse(sisipanjang.text);
      var lebar = double.parse(sisilebar.text);
      var pkl = panjang * lebar;
      hasilluas = pkl.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Persegi Panjang'),
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
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 10, color: Colors.red)),
                    width: 400,
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
                            new TextField(
                              controller: sisipanjang,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Masukan sisi panjang ',
                                  filled: true,
                                  suffix: Text('cm'),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            new TextField(
                              controller: sisilebar,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Masukan sisi lebar ',
                                  filled: true,
                                  suffix: Text('cm'),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
// Text Field Untuk Mengisi Nilai - End
// ------
// Menghitung Keliling Persegi Panjang - Start
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
                                onPressed: onPpkeliling,
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
                                "= $hasilkeliling",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
// Menghitung Keliling Persegi Panjang - End
// ------
// Menghitung Luas Persegi Panjang - Start
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
                                onPressed: onPpluas,
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
                                "= $hasilluas",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
//Menghitung Luas Persegi Panjang - End
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
