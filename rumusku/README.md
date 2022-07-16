# rumusku

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Rekomendasi

Text(
                    '  Rumus Lainya :',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                            margin: EdgeInsets.all(5),
                            width: 100,
                            height: 100,
                            decoration:
                                BoxDecoration(color: Colors.blue.shade900),
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
                                      'lingkaran',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ))),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                          child: Container(
                              margin: EdgeInsets.all(5),
                              width: 100,
                              height: 100,
                              decoration:
                                  BoxDecoration(color: Colors.blue.shade900),
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
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 2)),
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
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(width: 5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  )