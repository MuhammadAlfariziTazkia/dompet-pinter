import 'package:dompet_pinter/model/catatan.dart';
import 'package:hive/hive.dart';

class DatabaseConfig {
  void addCatatan(Catatan catatan) async {
    var box = await Hive.openBox<Catatan>("catatan");
    box.add(catatan);
    box.close();
  }

  void getLastestPengeluaran() async {
    List _catatan = <Catatan>[];
    final box = await Hive.openBox("catatan");

    _catatan = box.values.toList();
    box.close();
  }
}
