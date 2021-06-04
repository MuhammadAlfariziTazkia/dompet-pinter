import 'package:flutter/material.dart';

class TambahWishlist extends StatefulWidget {
  @override
  _TambahWishlistState createState() => _TambahWishlistState();
}

class _TambahWishlistState extends State<TambahWishlist> {
  TextEditingController nama = TextEditingController();
  TextEditingController harga = TextEditingController();
  TextEditingController tanggal = TextEditingController();
  TextEditingController keperluan = TextEditingController();
  TextEditingController link = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    double fieldWidth = size.width * 0.9537;
    double fieldHeight = size.height * 0.115;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Wishlist'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: size.width,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Isi Dompet',
                        style: TextStyle(fontSize: titleFont),
                      ),
                      SizedBox(height: 5),
                      Text('Rp 25.000.000.00,-',
                          style: TextStyle(
                              fontSize: keteranganFont,
                              color: Color(0xff2DDF00),
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)))),
            SizedBox(
              height: 15,
            ),
            Container(
              width: fieldWidth,
              height: fieldHeight,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nama,
                    decoration: InputDecoration(hintText: 'Nama Barang'),
                  ),
                ),
              ),
            ),
            Container(
              width: fieldWidth,
              height: fieldHeight,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: harga,
                    decoration: InputDecoration(hintText: 'Harga'),
                  ),
                ),
              ),
            ),
            Container(
              width: fieldWidth,
              height: fieldHeight,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: tanggal,
                    decoration:
                        InputDecoration(hintText: 'Tanggal Rencana Beli'),
                  ),
                ),
              ),
            ),
            Container(
              width: fieldWidth,
              height: fieldHeight,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: keperluan,
                    decoration: InputDecoration(hintText: 'Keperluan'),
                  ),
                ),
              ),
            ),
            Container(
              width: fieldWidth,
              height: fieldHeight,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: link,
                    decoration:
                        InputDecoration(hintText: 'Link Olshop (Optional)'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {},
              color: Color(0xffF83C3C),
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
              child: Text(
                'Tambah',
                style: TextStyle(color: Colors.white, fontSize: keteranganFont),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
