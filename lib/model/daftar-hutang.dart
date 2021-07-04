import 'package:hive/hive.dart';
part 'daftar-hutang.g.dart';

@HiveType(typeId: 1)
class DaftarHutang {
  @HiveField(0)
  String penghutang;
  @HiveField(1)
  String tanggal;
  @HiveField(2)
  String dihutang;
  @HiveField(3)
  int nominal;
  @HiveField(4)
  String keperluan;
  @HiveField(5)
  String waktuLunas;

  DaftarHutang(this.penghutang, this.tanggal, this.dihutang, this.nominal,
      this.keperluan, this.waktuLunas);
}
