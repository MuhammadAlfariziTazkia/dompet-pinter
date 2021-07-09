import 'package:hive/hive.dart';
part 'hutang.g.dart';

@HiveType(typeId: 1)
class Hutang {
  @HiveField(0)
  String pemberi;
  @HiveField(1)
  String tanggal;
  @HiveField(2)
  String penerima;
  @HiveField(3)
  int nominal;
  @HiveField(4)
  String keperluan;
  @HiveField(5)
  String waktuLunas;

  Hutang(this.keperluan, this.nominal, this.pemberi, this.penerima,
      this.tanggal, this.waktuLunas);
}
