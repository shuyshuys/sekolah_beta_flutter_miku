import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mie Goreng By Vioneta'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    child: Text(
                      'Mie Goreng By Vioneta',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 200),
                  for (var i = 0; i < 4; i++)
                    Icon(Icons.thumb_up, color: Colors.amber),
                  Icon(Icons.thumb_up_alt_outlined,
                      color: Colors.amber, size: 25),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 200, bottom: 20),
                          child: Text(
                            'Mi goreng berarti "mi yang digoreng" adalah hidangan mie yang dimasak dengan digoreng tumis khas Indonesia. Mi goreng juga populer dan juga digemari di Malaysia, dan Singapura.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 200, bottom: 50),
                          child: Text(
                            'Mi goreng terbuat dari mi kuning yang digoreng dengan sedikit minyak goreng, dan ditambahkan bawang putih, bawang merah, udang serta daging ayam atau daging sapi, irisan bakso.',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/images/emih.png", height: 300),
                  Container(
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}