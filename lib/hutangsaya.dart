import 'package:flutter/material.dart';
import 'tambahhutangsaya.dart';

class HutangSaya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    double fieldWidth = size.width * 0.9537;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text('Hutang Saya'),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                      '10 Daftar Hutang Saya',
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
                              Text('Total Hutang Saya',
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
            Container(
              width: fieldWidth,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Nama yang Ngutang',
                                style: TextStyle(
                                    fontSize: keteranganFont,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text('Rp 1.000.000',
                                  style: TextStyle(fontSize: titleFont))
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
                                          height: size.height * 0.4,
                                          width: size.width,
                                          child: Column(
                                            children: [
                                              Text('Hutang'),
                                              Text('Muhammad Alfarizi Tazkia'),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Text(
                                                    '21 Januari 2021',
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text('Rp 20.000.000,-'),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text('Buat bayar sekolah'),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text('22 Februari 2021')
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text('Info'),
                            ),
                            RaisedButton(
                              elevation: 5,
                              color: Color(0xff2BB3FF),
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                'Bayar',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TambahHutangSaya();
          }));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
