import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.ac_unit_outlined),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Buttons'),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () => {}, child: Text('Button Text')),
            //TextButton(onPressed: () => {}, child: Text('Button Text')),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () => {},
              child: Text('Boton con relleno'),
              style: FilledButton.styleFrom(backgroundColor: Colors.blue),
            ),
            OutlinedButton(
              onPressed: () => {},
              child: Text('Outline Button'),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            IconButton(onPressed: () => {}, icon: Icon(Icons.ac_unit)),
            FilledButton.icon(
              onPressed: () => {},
              label: Text('Hola'),
              icon: Icon(Icons.abc),
            ),
            OutlinedButton.icon(
              onPressed: () => {},
              label: Text('Outline with icon'),
              icon: Icon(Icons.ac_unit),
            ),
            ElevatedButton(onPressed: () => {}, child: Text('Elevated Button')),
            ElevatedButton(
              onPressed: () => {},
              child: Icon(Icons.deck_rounded),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () => {},
                child: Text('Elevated Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
