import 'package:flutter/material.dart';
import 'detail_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: DetailScreen(), // Menambahkan Widget Detail Screen
    );
  }
}


class DetailScreen extends StatelessWidget{
  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
          child: Column( // Menambahkan Column
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/farm-house.jpg"),
              Container( // Container 1
                child: Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Staatliches',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: EdgeInsets.only(top: 16.0),
              ),


              Container( // Container 2
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column( // Column 1
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text(
                          'Open Everyday',
                          style: informationTextStyle,
                        ),
                      ],
                    ),

                    Column( // Column 2
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text(
                          '09:00 - 20:00',
                          style: informationTextStyle,
                        ),
                      ],
                    ),

                    Column( // Column 3
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text(
                          'RP 25.000',
                          style: informationTextStyle,),
                      ],
                    ),

                  ],
                ),
              ),


              Container( // Container 3
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Berada di jalur utama Bandung - Lembang, Farm house menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),


              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal, // Menjadikan horizontal listView
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                        )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect( // ClipRRect memungkinkan gambar memiliki radius
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                        )
                      ),

                    ],
                  ),
              ),
              
            ],
          ),
        ),



    );
  }
}