import 'package:hive/hive.dart';
part 'daftar-hutang.g.dart';

class DaftarHutang {
  String penghutang;
  String tanggal;
  String dihutang;
  int nominal;
  String keperluan;
  String waktuLunas;

  DaftarHutang(this.penghutang, this.tanggal, this.dihutang, this.nominal,
      this.keperluan, this.waktuLunas);
}
