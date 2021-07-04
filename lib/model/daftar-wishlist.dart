import 'package:hive/hive.dart';
part 'daftar-wishlist.g.dart';

class DaftarWishlist {
  String namaBarang;
  int harga;
  String waktuBeli;
  String keperluan;
  String link;

  DaftarWishlist(
      this.namaBarang, this.harga, this.waktuBeli, this.keperluan, this.link);
}
