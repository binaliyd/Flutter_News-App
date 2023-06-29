import 'package:flutter/material.dart';

void main() {
  runApp(HaberUygulamasi());
}

class HaberUygulamasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Haber Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HaberListesi(),
    );
  }
}

class HaberListesi extends StatelessWidget {
  final haberler = [
    "Haber 1",
    "Haber 2",
    "Haber 3",
    "Haber 4",
    "Haber 5",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haber Uygulaması'),
      ),
      body: ListView.builder(
        itemCount: haberler.length,
        itemBuilder: (context, index) {
          final haber = haberler[index];
          return ListTile(
            title: Text(haber),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HaberDetayi(haberBaslik: haber),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HaberDetayi extends StatelessWidget {
  final String haberBaslik;

  const HaberDetayi({required this.haberBaslik});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Haber Detayı'),
      ),
      body: Center(
        child: Text(haberBaslik),
      ),
    );
  }
}
