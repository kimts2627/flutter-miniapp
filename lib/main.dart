import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Layout()
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image example'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://picsum.photos/400/600',
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
