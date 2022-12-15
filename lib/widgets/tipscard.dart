import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme/colorPalette.dart';
import 'package:bwa_cozy/theme/styleText.dart';
import 'package:flutter/material.dart';

class Tipscard extends StatelessWidget {
  final Tips tips;
  Tipscard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            height: 80,
            width: 80,
            child: Image.asset(height: 80, width: 80, tips.gambar),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 14, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tips.judul,
                  style: mediumText.copyWith(fontSize: 18, color: hitam),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text(
                    "Updated " + tips.tanggal,
                    style: lightText.copyWith(fontSize: 14, color: abu3),
                  ),
                )
              ],
            )),
        Spacer(),
        IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right))
      ],
    );
  }
}
