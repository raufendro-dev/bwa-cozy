import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:flutter/material.dart';

class Bottomnavbaritem extends StatelessWidget {
  final String gambar;
  final bool isActive;
  Bottomnavbaritem({required this.gambar, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(height: 26, width: 26, gambar),
        Spacer(),
        isActive
            ? Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                    color: ungu,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(1000))),
              )
            : Container()
      ],
    );
  }
}
