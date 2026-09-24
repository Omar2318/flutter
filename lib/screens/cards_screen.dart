import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cards'),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
    );
  }
}
