import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body:
        Column(
          children: <Widget>[
            Text(""),

            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/self.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("============================================",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Data Diri",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                Text("============================================",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Nama                 : Jawahir Ilham Ramadhan",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Tempat, TGL     : Tangerang, 03-01-2000",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Jenis Kelamin   : Laki-Laki",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Agama                : ISLAM",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                Text("Alamat                : Kp.pulo Rt:11/05, Ds.Bitung Jaya",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(""),
                    Text("===========================================",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Data Riwayat Pekerjaan",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    Text("===========================================",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2016 - 2016 : PT.STARMAS INTI ALUMINIUM INDUSTRY",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2020 - 2020 : Klinik Amanah Bunda",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2021 -            : PT. Mero Sekawan Jaya",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(""),
                    Text("===========================================",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("Data Pendidikan",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    Text("===========================================",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2006 - 2012 : SDN Cikupa 1",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2012 - 2015 : SMP Muhammadiyah 48 Cikupa",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2015 - 2018 : SMKN 1 Kab.Tangerang",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    Text("2019 -            : Universitas Esa Unggul",
                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    );
  }
}