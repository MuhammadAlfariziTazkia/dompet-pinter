import 'package:dompet_pinter/model/data.dart';
import 'package:dompet_pinter/model/hutang.dart';
import 'package:dompet_pinter/model/transaksi.dart';
import 'package:dompet_pinter/model/wishlist-db.dart';
import 'package:hive/hive.dart';

class DatabaseHelper {
  void addTransaksi(Transaksi transaksi) {
    var _box = Hive.box("transaksi");
    _box.add(transaksi);
  }

  void addHutang(Hutang hutang) {
    var _box = Hive.box("hutang");
    _box.add(hutang);
  }

  void addWishlist(WishlistDB wishlist) {
    var _box = Hive.box("wishlist");
    _box.add(wishlist);
  }

  Future<Map> showData() async {
    await Hive.openBox("data");
    Map dataMap = Map();
    var _box = Hive.box("data");
    Data data = _box.getAt(0);

    dataMap = {
      "username": data.username,
      "saldo_dompet": data.saldoDompet,
      "saldo_calengan": data.saldoCalengan
    };
    await Future.delayed(Duration(seconds: 2));
    _box.close();
    return dataMap;
  }

  Future<Map> getLastTransaction() async {
    var dataMap = Map();
    var _box = Hive.box("transaction");
    String kPemasukan = "";
    int nPemasukan = 0;
    String kPengeluaran = "";
    int nPengeluaran = 0;
    for (int i = 0; i < _box.length; i++) {
      Transaksi data = _box.getAt(i);
      if (data.tipe == "pemasukan") {
        kPemasukan = data.keterangan;
        nPemasukan = data.nominal;
      }
      if (data.tipe == "pengeluaran") {
        kPengeluaran = data.keterangan;
        nPengeluaran = data.nominal;
      }
    }
    dataMap = {
      "keterangan_pemasukan": kPemasukan,
      "nominal_pemasukan": nPemasukan,
      "keterangan_pengeluaran": kPengeluaran,
      "nominal_pengeluaran": nPengeluaran
    };

    await Future.delayed(Duration(seconds: 2));
    return dataMap;
  }
}
