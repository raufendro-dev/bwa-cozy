class City {
  int id;
  String nama;
  String gambar;
  bool isPopular;

  City(
      {required this.id,
      required this.gambar,
      required this.nama,
      this.isPopular = false});
}
