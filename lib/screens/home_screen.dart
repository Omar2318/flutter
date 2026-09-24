import 'package:flutter/material.dart';
import 'package:flutter_widgets/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menu = Routes().menu;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(menu[index].title),
          leading: Icon(Icons.accessibility_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.pushNamed(context, menu[index].route);
          },
        ),
      ),
    );
  }
}
