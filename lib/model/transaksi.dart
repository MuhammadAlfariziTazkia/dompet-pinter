import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class Transaksi {
  @HiveField(0)
  String waktu;
  @HiveField(1)
  String keterangan;
  @HiveField(2)
  int nominal;
  @HiveField(3)
  String tipe;

  Transaksi(this.waktu, this.keterangan, this.nominal, this.tipe);
}
