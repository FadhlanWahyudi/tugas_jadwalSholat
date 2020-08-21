import 'package:flutter/material.dart';
import 'package:tugas_jadwal_sholat/model/ResponseJadwal.dart';
import 'package:tugas_jadwal_sholat/text_style.dart';

class ListJadwal extends StatelessWidget {
  ResponseJadwal data;

  ListJadwal(this.data);

  Widget containerWaktu(String waktu, String jam) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)],
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.centerLeft,
                colors: [Color(0xffE5E4E2), Color(0xff616D7E)])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              waktu,
              style: styleListText,
            ),
            Text(
              jam,
              style: styleListText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        containerWaktu(data.results.datetime[0].times.Fajr, 'Subuh'),
        containerWaktu(data.results.datetime[0].times.Dhuhr, 'Dzuhur'),
        containerWaktu(data.results.datetime[0].times.Asr, 'Ashar'),
        containerWaktu(data.results.datetime[0].times.Maghrib, 'Maghrib'),
        containerWaktu(data.results.datetime[0].times.Isha, 'Isya'),
      ],
    );
  }
}
