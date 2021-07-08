import 'package:dompet_pinter/model/catatan.dart';
import 'package:dompet_pinter/model/daftar-hutang.dart';
import 'package:dompet_pinter/model/daftar-wishlist.dart';
import 'package:dompet_pinter/model/data-saldo.dart';
import 'package:hive/hive.dart';

class DatabaseConfig {
  void addCatatan(Catatan catatan) async {
    var box = await Hive.openBox<Catatan>("catatan");
    box.add(catatan);
  }

  void getLastestPengeluaran() async {
    List _catatan = <Catatan>[];
    final box = await Hive.openBox("catatan");

    _catatan = box.values.toList();
  }

  void addHutang(DaftarHutang hutang) async {
    var box = await Hive.box("hutang");
    box.add(hutang);
  }

  void addWishlist(DaftarWishlist wishlist) async {
    var box = await Hive.box("wishlist");
    box.add(wishlist);
  }

  Future<int> getSaldoDompet() async {
    var box = await Hive.openBox("data-saldo");
    if (box.length == 0) {
      box.add(DataSaldo(10000, 5000));
    }
    DataSaldo data = box.getAt(0);
    await Future.delayed(Duration(seconds: 2));
    return data.saldoDompet;
  }
}
