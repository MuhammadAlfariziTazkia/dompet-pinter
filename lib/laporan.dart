import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:hive/hive.dart';
import 'model/catatan.dart';

class Laporan extends StatefulWidget {
  const Laporan({Key? key}) : super(key: key);

  @override
  _LaporanState createState() => _LaporanState();
}

class _LaporanState extends State<Laporan> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double titleFont = size.width * 0.0364;
    double keteranganFont = size.width * 0.0437;
    return Scaffold(
      body: FutureBuilder(
        future: Hive.openBox("catatan"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text((snapshot.error).toString()));
            } else {
              var catatanBox = Hive.box("catatan");
              // if (catatanBox.length == 1) {
              //   catatanBox.add(Catatan("12 Januari 2021", "Beli Mobil", 10000));
              // }
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: catatanBox.length,
                      itemBuilder: (context, index) {
                        Catatan catatan = catatanBox.getAt(index);
                        return Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    catatan.waktu,
                                    style: TextStyle(fontSize: titleFont),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    catatan.keterangan,
                                    style: TextStyle(fontSize: keteranganFont),
                                  ),
                                  Text(
                                    catatan.nominal.toString(),
                                    style: TextStyle(fontSize: keteranganFont),
                                  )
                                ],
                              ),
                            ));
                      }),
                ),
              );
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    Hive.close();
    super.dispose();
  }
}
// // class Laporan extends StatefulWidget {
// //   @override
// //   _LaporanState createState() => _LaporanState();
// // }

// class _LaporanState extends State<Laporan> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double titleFont = size.width * 0.0364;
//     double keteranganFont = size.width * 0.0437;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Laporan Keuangan'),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 25,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     Text('Mulai'),
//                     RaisedButton(
//                         color: Color(0xffFFD646),
//                         onPressed: () {},
//                         child: Text('21 Januari 2021'))
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     Text('Akhir'),
//                     RaisedButton(
//                       color: Color(0xffFFD646),
//                       onPressed: () {},
//                       child: Text('21 Februari 2021'),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             FutureBuilder(
//               future: Hive.openBox("catatan"),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   if (snapshot.hasError) {
//                     return Center(child: Text((snapshot.error).toString()));
//                   } else {
//                     var catatanBox = Hive.box("catatan");
//                     if (catatanBox.length == 0) {
//                       catatanBox
//                           .add(Catatan(10000, "Modal", "12 Januari 2021"));
//                     }
//                     return ListView.builder(
//                         itemCount: catatanBox.length,
//                         itemBuilder: (context, index) {
//                           Catatan catatan = catatanBox.getAt(index);
//                           return Text(catatan.keterangan);
//                         });
//                   }
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       '21 Januari 2021',
//                       style: TextStyle(fontSize: titleFont),
//                     ),
//                     Text('Beli Motor Baru',
//                         style: TextStyle(fontSize: keteranganFont)),
//                     SizedBox(height: 10)
//                   ],
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(''),
//                     Text('Rp 17.000.000',
//                         style: TextStyle(fontSize: keteranganFont)),
//                     SizedBox(height: 10)
//                   ],
//                 )
//               ],
//             ),
//             Divider(
//               color: Colors.black,
//               height: 2,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
