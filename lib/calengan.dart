import 'package:flutter/material.dart';
import 'tarikuang.dart';

class Calengan extends StatefulWidget {
  @override
  _CalenganState createState() => _CalenganState();
}

class _CalenganState extends State<Calengan> {
  TextEditingController tanggal = TextEditingController();
  TextEditingController nominal = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    tanggal.dispose();
    nominal.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    double fieldWidth = size.width * 0.9537;
    double fieldHeight = size.height * 0.115;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Calengan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                elevation: 10,
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tabungan Terakhir',
                              style: TextStyle(fontSize: titleFont),
                            ),
                            Text(
                              '12 Januari 2021',
                              style: TextStyle(
                                  fontSize: keteranganFont,
                                  color: Color(0xff2BB3FF),
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Penarikan Terakhir',
                              style: TextStyle(fontSize: titleFont),
                            ),
                            Text(
                              '24 Januari 2021',
                              style: TextStyle(
                                  fontSize: keteranganFont,
                                  color: Color(0xffF83C3C),
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(fontSize: titleFont),
                            ),
                            Text(
                              'Rp 10.000.000',
                              style: TextStyle(
                                  fontSize: keteranganFont,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '',
                              style: TextStyle(fontSize: titleFont),
                            ),
                            Text(
                              'Rp 20.000',
                              style: TextStyle(
                                  fontSize: keteranganFont,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Isi Calengan',
                      style: TextStyle(fontSize: titleFont),
                    ),
                    Text(
                      'Rp 25.000.000,-',
                      style: TextStyle(
                          fontSize: keteranganFont,
                          color: Color(0xff2DDF00),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TarikUang();
                        }));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Color(0xffF83C3C),
                      child: Text(
                        'Tarik Uang',
                        style: TextStyle(
                            color: Colors.white, fontSize: keteranganFont - 2),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
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
                    decoration: InputDecoration(hintText: 'Tanggal'),
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
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('${nominal.text}'),
                      );
                    });
              },
              color: Color(0xff2BB3FF),
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
              child: Text(
                'Tabung',
                style: TextStyle(color: Colors.white, fontSize: keteranganFont),
              ),
            )
          ],
        ),
      ),
    );
  }
}
