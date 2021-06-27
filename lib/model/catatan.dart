import 'package:hive/hive.dart';
part 'catatan.g.dart';

@HiveType(typeId: 0)
class Catatan {
  @HiveField(0)
  int nominal;
  @HiveField(1)
  String keterangan;
  @HiveField(2)
  String waktu;

  Catatan(this.nominal, this.keterangan, this.waktu);
}
