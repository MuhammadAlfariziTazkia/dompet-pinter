import 'package:dompet_pinter/model/daftar-wishlist.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'tambahwishlist.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    double fieldWidth = size.width * 0.9537;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Wishlist'),
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              elevation: 5,
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    '10 Barang di Wishlist',
                    style: TextStyle(
                        fontSize: keteranganFont + 2,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Isi Dompet',
                              style: TextStyle(fontSize: titleFont),
                            ),
                            Text('Rp 10.000.000',
                                style: TextStyle(
                                    fontSize: keteranganFont,
                                    color: Color(0xff2BB3FF))),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Total Harga Wishlist',
                                style: TextStyle(fontSize: titleFont)),
                            Text('Rp 100.000.000',
                                style: TextStyle(
                                    fontSize: keteranganFont,
                                    color: Color(0xffF83C3C)))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25)
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
              child: FutureBuilder(
                  future: Hive.openBox("wishlist"),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      var box = Hive.box("wishlist");
                      return ListView.builder(
                          itemCount: box.length,
                          itemBuilder: (context, index) {
                            DaftarWishlist wishlist = box.getAt(index);
                            return Container(
                              width: fieldWidth,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                wishlist.namaBarang,
                                                style: TextStyle(
                                                    fontSize: keteranganFont,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Text(wishlist.harga.toString(),
                                                  style: TextStyle(
                                                      fontSize: titleFont))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            RaisedButton(
                                              elevation: 5,
                                              color: Color(0xffFFD646),
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        content: Container(
                                                          height:
                                                              size.height * 0.4,
                                                          width: size.width,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .stretch,
                                                            children: [
                                                              Text(
                                                                wishlist
                                                                    .namaBarang,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(wishlist
                                                                      .harga
                                                                      .toString()),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(wishlist
                                                                      .waktuBeli),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(wishlist
                                                                      .keperluan)
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    });
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text('Info'),
                                            ),
                                            RaisedButton(
                                              elevation: 5,
                                              color: Color(0xffFF5B5B),
                                              onPressed: () {},
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Text(
                                                'Beli',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    )),
                              ),
                            );
                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TambahWishlist();
            }));
          },
          child: Icon(Icons.add)),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Hive.close();
    super.dispose();
  }
}
