import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:bwa_cozy/theme/styleText.dart';
import 'package:flutter/material.dart';

class Spacecard extends StatelessWidget {
  final Space space;
  Spacecard(this.space);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 110,
            width: 130,
            child: Stack(children: [
              Image.asset(height: 110, width: 130, space.gambar),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(36)),
                        color: ungu),
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Image.asset(
                                height: 18,
                                width: 18,
                                'assets/images/icon/star.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2),
                            child: Text(
                              space.rating,
                              style: mediumText.copyWith(
                                  fontSize: 13, color: putih),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.nama,
                style: mediumText.copyWith(fontSize: 18, color: hitam),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Row(children: [
                  Text(
                    "\$" + space.harga.toString(),
                    style: mediumText.copyWith(fontSize: 16, color: ungu),
                  ),
                  Text(
                    " / month",
                    style: lightText.copyWith(fontSize: 16, color: abu3),
                  )
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  space.alamat,
                  style: lightText.copyWith(fontSize: 14, color: abu3),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
