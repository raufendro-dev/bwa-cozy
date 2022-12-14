import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:bwa_cozy/theme/styleText.dart';
import 'package:flutter/material.dart';

class Citycard extends StatelessWidget {
  final City city;
  Citycard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: abu2,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  height: 102,
                  width: 120,
                  city.gambar,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(36)),
                                color: ungu),
                            child: Center(
                              child: Image.asset(
                                  height: 18,
                                  width: 18,
                                  'assets/images/icon/star.png'),
                            )),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 11),
              child: Text(
                city.nama,
                style: mediumText.copyWith(fontSize: 16, color: hitam),
              ),
            )
          ],
        ),
      ),
    );
  }
}
