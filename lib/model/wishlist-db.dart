import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class WishlistDB {
  @HiveField(0)
  String nama;
  @HiveField(1)
  int harga;
  @HiveField(2)
  String waktuBeli;
  @HiveField(3)
  String keperluan;
  @HiveField(4)
  String link;

  WishlistDB(this.harga, this.keperluan, this.link, this.nama, this.waktuBeli);
}
