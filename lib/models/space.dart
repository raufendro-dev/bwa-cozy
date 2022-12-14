import 'dart:ffi';

class Space {
  int id;
  String gambar;
  String nama;
  int harga;
  String alamat;
  String rating;

  Space(
      {required this.id,
      required this.gambar,
      required this.nama,
      required this.harga,
      required this.alamat,
      required this.rating});
}
