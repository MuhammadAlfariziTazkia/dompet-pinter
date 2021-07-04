import 'package:hive/hive.dart';
part 'daftar-wishlist.g.dart';

@HiveType(typeId: 2)
class DaftarWishlist {
  @HiveField(0)
  String namaBarang;
  @HiveField(1)
  int harga;
  @HiveField(2)
  String waktuBeli;
  @HiveField(3)
  String keperluan;
  @HiveField(4)
  String link;

  DaftarWishlist(
      this.namaBarang, this.harga, this.waktuBeli, this.keperluan, this.link);
}
