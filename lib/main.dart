import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Symphogear Characters',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  State<MyHomePage> adMoreLoveState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symphogear Characters'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
              'https://static.zerochan.net/Kohinata.Miku.full.1006819.jpg',
              width: 240),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Kohinata Miku', style: TextStyle(fontSize: 24)),
              const Text(
                  'Miku Kohinata (小日向 未来) adalah sahabat Hibiki, yang tinggal satu asrama dengannya dan sering mengkhawatirkan keselamatannya.\n',
                  style: TextStyle(fontSize: 16)),
              const Text(
                'Meskipun ia berperan sebagai gadis biasa di sebagian besar seri, ia menjadi pengguna Symphogear sementara yang menggunakan relik Shénshòujìng di G. Ia kemudian menggunakan Jubah Faust dari Shénshòujìng di Senki Zesshō Symphogear XV.\n',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Text(
                    'Your ',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const Icon(Icons.favorite_border_rounded),
                  Text(
                    ' to Miku: ',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              Row(
                children: [
                  _counter == 0
                      ? const Text('Press Button To Raise Up Your Love')
                      : Row(
                          children: [
                            for (int i = 0; i < _counter; i++)
                              const Icon(Icons.favorite_sharp, color: Colors.pink),
                          ],
                        )
                ],
              ),
            ],
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite_sharp),
      ),
    );
  }
}
