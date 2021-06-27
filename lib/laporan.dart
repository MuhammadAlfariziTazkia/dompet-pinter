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
    return Scaffold(
      body: FutureBuilder(
        future: Hive.openBox("catatan"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text((snapshot.error).toString()));
            } else {
              var catatan = Hive.box("catatan");
              if (catatan.length == 0) {
                catatan.add(Catatan(10000, "Modal", "12 Januari 2021"));
              }
              return ListView.builder(
                  itemCount: catatan.length,
                  itemBuilder: (context, index) {
                    Catatan catatan_single = catatan.getAt(index);
                    return Text(catatan_single.keterangan);
                  });
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
// class Laporan extends StatefulWidget {
//   @override
//   _LaporanState createState() => _LaporanState();
// }

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
