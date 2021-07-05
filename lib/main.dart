import 'package:dompet_pinter/model/catatan.dart';
import 'package:flutter/material.dart';
import 'catatpemasukan.dart';
import 'catatpengeluaran.dart';
import 'calengan.dart';
import 'wishlist.dart';
import 'hutangsaya.dart';
import 'hutangorang.dart';
import 'laporan.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(CatatanAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double cardSize = size.width * 0.37;
    double boxSize = size.height * 0.011;
    double fontSize = size.width * 0.0364;
    double cardElevation = 7;
    double imageSize = size.width * 0.267;
    double iconSize = size.width * 0.12;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff000000), Color(0xff2BB3FF)])),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Halo',
                          style: TextStyle(
                              fontSize: size.width * 0.0608,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Muhammad Alfarizi T',
                          style: TextStyle(
                              fontSize: size.width * 0.053,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('isi Dompet',
                        style: TextStyle(
                            fontSize: size.width * 0.03, color: Colors.white)),
                    Text('Rp 25.000.000.00,-',
                        style: TextStyle(
                            fontSize: size.width * 0.043,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(height: boxSize),
              Container(
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: boxSize,
                                ),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return CatatPemasukan();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/pemasukan.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Catet \nPemasukan',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: boxSize),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Calengan();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/calengan.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Calengan',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: boxSize),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return HutangOrang();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/hutangorang.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Hutang \nOrang',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: boxSize),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return CatatPengeluaran();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/pengeluaran.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Catet \nPengeluaran',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: boxSize),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Wishlist();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/wishlist.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Wishlist',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: boxSize),
                                Container(
                                  width: cardSize,
                                  height: cardSize,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return HutangSaya();
                                      }));
                                    },
                                    child: Card(
                                      elevation: cardElevation,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'images/hutangsaya.png',
                                            width: iconSize,
                                          ),
                                          Text(
                                            'Hutang \nSaya',
                                            style: fitur(fontSize),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                      SizedBox(height: boxSize),
                      Container(
                        width: size.width * 0.817,
                        height: size.width * 0.182,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Laporan();
                            }));
                          },
                          child: Card(
                            elevation: cardElevation,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/laporan.png',
                                  width: iconSize * 0.75,
                                ),
                                SizedBox(
                                  width: boxSize,
                                ),
                                Text(
                                  'Laporan Keuangan',
                                  style: fitur(fontSize),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle fitur(double size) {
    return TextStyle(fontSize: size);
  }
}
