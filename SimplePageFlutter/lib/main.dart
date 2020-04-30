import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Demo FLutter',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Gunung Slamet';
  final String location = 'Banyumas, Jawa Tengah';
  final String desc = 'Gunung Slamet (3.428 meter dpl.) adalah sebuah gunung berapi kerucut yang terdapat di Pulau Jawa, Indonesia. Gunung Slamet terletak di antara 5 kabupaten, yaitu Kabupaten Brebes, Kabupaten Banyumas, Kabupaten Purbalingga, Kabupaten Tegal, dan Kabupaten Pemalang, Provinsi Jawa Tengah. Gunung Slamet merupakan gunung tertinggi di Jawa Tengah serta kedua tertinggi di Pulau Jawa setelah Gunung Semeru. ';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'images/slamet.jpg',
            height: 250.0,
            width: 412.0,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15.0,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 10.0,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.title,
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      this.location,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 90.0,
                ),
                Icon(
                  Icons.favorite,
                  size: 24.0,
                  color: Colors.red,
                ),
                Container(
                  width: 2.0,
                ),Container(
                  padding: EdgeInsets.fromLTRB(2,8,2,4),
                  child: Text(
                    '55',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    )
                  ) 
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                this.desc,
                style: TextStyle(
                  fontSize: 18.0,
                ),
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
            ],
          ),
    );
  }
}