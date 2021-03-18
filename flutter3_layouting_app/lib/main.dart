import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Masjid Raya Baiturrahman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Indonesia, Banda Aceh ',
                  style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.favorite,
            color: Colors.red[500],
          ),
          Text('41k'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Masjid Raya Baiturrahman adalah salah satu masjid yang ada di '
            'Desa Kampung Baru, Kecamatan Baiturrahman, Kota Banda Aceh. '
            'Masyarakat Aceh menggunakan masjid ini sebagai tempat ibadah '
            'dan syiar Islam. Masjid Raya Baiturrahman didirikan oleh Sultan '
            'Alauddin Mahmud Syah I pada tahun 1292 M. '
           ,

        softWrap: true,
      ),
    );

    Widget alamat = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    'Alamat',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                Text(
                  'Jl. Moh. Jam No.1, Kp. Baru, Kec. Baiturrahman, Kota Banda Aceh, Aceh ',
                  style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget luas = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    'Luas Bangunan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '1500 m2 (16000 sq ft) ',
                  style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );

    Widget gaya = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 1),
                  child: Text(
                    'Gaya Arsitektur',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Arsitektur Mughal, Arsitektur Indo-Saracenic',
                  style: TextStyle(
                    color: Colors.grey[500], fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


    return MaterialApp(
      title: 'Flutter layout demo foto',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Masjid Indonesia'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/masjid.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            alamat,
            luas,
            gaya,

          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}