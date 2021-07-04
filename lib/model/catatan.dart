import 'package:hive/hive.dart';
part 'catatan.g.dart';

@HiveType(typeId: 0)
class Catatan {
  @HiveField(0)
  String waktu;
  @HiveField(1)
  String keterangan;
  @HiveField(2)
  int nominal;

  Catatan(this.waktu, this.keterangan, this.nominal);
}
