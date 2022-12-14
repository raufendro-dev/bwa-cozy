import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:bwa_cozy/theme/styleText.dart';
import 'package:bwa_cozy/widgets/citycard.dart';
import 'package:bwa_cozy/widgets/spacecard.dart';
import 'package:flutter/material.dart';

class Homepagescreen extends StatelessWidget {
  List<City> citylist = [
    City(
        id: 0,
        gambar: 'assets/images/city/city0.png',
        nama: 'Jakarta',
        isPopular: true),
    City(
        id: 1,
        gambar: 'assets/images/city/city1.png',
        nama: 'Bandung',
        isPopular: false),
    City(
        id: 2,
        gambar: 'assets/images/city/city2.png',
        nama: 'Surabaya',
        isPopular: false)
  ];
  List<Space> spacelist = [
    Space(
        id: 0,
        gambar: 'assets/images/space/space0.png',
        nama: 'Kuretakeso Hott',
        harga: 52,
        alamat: 'Bandung, Germany',
        rating: '4/5'),
    Space(
        id: 1,
        gambar: 'assets/images/space/space1.png',
        nama: 'Roemah Nenenk',
        harga: 11,
        alamat: 'Seattle, Bogor',
        rating: '5/5'),
    Space(
        id: 2,
        gambar: 'assets/images/space/space2.png',
        nama: 'Darrling How',
        harga: 20,
        alamat: 'Jakarta, Indonesia',
        rating: '3/5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 24, left: 24),
              child: Text(
                "Explore Now",
                style: mediumText.copyWith(fontSize: 24, color: hitam),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 2, left: 24),
              child: Text(
                "Mencari kosan yang cozy",
                style: lightText.copyWith(fontSize: 16, color: abu),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 24),
              child: Text(
                "Popular Cities",
                style: regularText.copyWith(fontSize: 16),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 16, left: 24),
                child: Container(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: citylist.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Citycard(citylist[index]),
                          );
                        }))),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 24),
              child: Text(
                "Recommended Space",
                style: regularText.copyWith(fontSize: 16),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24),
                  child: Spacecard(spacelist[0]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24),
                  child: Spacecard(spacelist[1]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24),
                  child: Spacecard(spacelist[2]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
