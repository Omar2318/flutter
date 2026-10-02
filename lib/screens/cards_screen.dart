import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cards'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            color: Colors.lime,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Este es un texto de prueba para el ejemplo de mi card, la card esta recibiendo como hijo un widget de tipo Text',
              ),
            ),
          ),
          HeroCard(),
          LocalImageCard(),
        ],
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyoHKKqlHNrcnGMB0iMyJfp0Y68oYvHS1G2GyVkd-Khi3ZDYEILFbR0aI&s=10',
              height: 150,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'The Amazing Spider-Man: Tormento y Máscaras',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              'Spider-Man: Tormento y Máscaras es un tomo recopilatorio que marca el debut de Todd McFarlane como escritor e ilustrador a principios de los años noventa',
            ),
          ),
        ],
      ),
    );
  }
}

class LocalImageCard extends StatelessWidget {
  const LocalImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(
              'assets/images/image.png',

              height: 350,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Mi imagen local',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
