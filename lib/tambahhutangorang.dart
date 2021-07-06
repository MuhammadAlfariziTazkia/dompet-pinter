import 'package:dompet_pinter/database-conf.dart';
import 'package:dompet_pinter/model/daftar-hutang.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class TambahHutangOrang extends StatefulWidget {
  const TambahHutangOrang({Key? key}) : super(key: key);

  @override
  _TambahHutangOrangState createState() => _TambahHutangOrangState();
}

class _TambahHutangOrangState extends State<TambahHutangOrang> {
  TextEditingController tanggal_ngutang = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController nominal = TextEditingController();
  TextEditingController keperluan = TextEditingController();
  TextEditingController tanggal_balikin = TextEditingController();
  DatabaseConfig db = DatabaseConfig();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    double fieldWidth = size.width * 0.9537;
    double fieldHeight = size.height * 0.115;
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Hutang Orang'),
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
                    controller: tanggal_ngutang,
                    decoration: InputDecoration(hintText: 'Tanggal Ngutang'),
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
                    controller: nama,
                    decoration: InputDecoration(hintText: 'Nama'),
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
                    controller: nominal,
                    decoration: InputDecoration(hintText: 'Nominal'),
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
                    controller: tanggal_balikin,
                    decoration: InputDecoration(hintText: 'Tanggal Balikin'),
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
              onPressed: () {
                db.addHutang(DaftarHutang(
                    nama.text,
                    tanggal_ngutang.text,
                    "saya",
                    int.parse(nominal.text),
                    keperluan.text,
                    tanggal_balikin.text));
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(content: Text('${nama.text}'));
                    });
              },
              color: Color(0xffF83C3C),
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
              child: Text(
                'Pinjemin',
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

  @override
  void dispose() {
    // TODO: implement dispose
    tanggal_ngutang.dispose();
    nama.dispose();
    nominal.dispose();
    keperluan.dispose();
    tanggal_balikin.dispose();
    Hive.close();
    super.dispose();
  }
}
