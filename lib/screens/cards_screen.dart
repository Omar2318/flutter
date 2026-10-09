import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cards'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              margin: const EdgeInsets.all(10),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Este es un texto de prueba para el ejemplo de mi card, '
                  'la card esta recibiendo como hijo un widget de tipo Text',
                ),
              ),
            ),
            HeroCard(),
            LocalImageCard(),
            CardProduct(),
            PercentageCard(),
          ],
        ),
      ),
    );
  }
}

class CardProduct extends StatefulWidget {
  const CardProduct({super.key});

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  int contador = 5;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(30),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTEiE3teL5LMCK2gJny9CgF9aA54TZJ5tB0sI7EUQe3ErJh9gNsTol14Z&s=10',
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Helado de chocolate',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    child: Text('Add to cart'),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      contador++;
                    });
                  },
                  icon: Icon(Icons.add),
                ),
                Text(
                  '$contador',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (contador > 0) {
                        contador--;
                      }
                    });
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PercentageCard extends StatefulWidget {
  const PercentageCard({super.key});

  @override
  State<PercentageCard> createState() => _PercentageCardState();
}

class _PercentageCardState extends State<PercentageCard> {
  int porcentaje = 10;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(30),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTEiE3teL5LMCK2gJny9CgF9aA54TZJ5tB0sI7EUQe3ErJh9gNsTol14Z&s=10',
              ),
            ),
            Align(
              alignment: AlignmentGeometry.center,
              child: Text(
                'Pelicula Pou Maligno, descuento: $porcentaje %',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      porcentaje = 10;
                    });
                  },
                  icon: Icon(Icons.credit_card),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      porcentaje = 100;
                    });
                  },
                  icon: Icon(Icons.monetization_on),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                    onPressed: () {},
                    child: Text('Add to cart'),
                  ),
                ),
              ],
            ),
          ],
        ),
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
