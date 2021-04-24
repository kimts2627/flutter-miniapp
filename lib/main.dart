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
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Random Picture', style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text('Picture from Lorem Picsum!', style: TextStyle(
                        color: Colors.grey[500],
                      ))
                    ],
                  )
                ),
                Icon(Icons.wifi_outlined, color: Colors.red,),
                Text('01'),
              ],
            ),
            padding: EdgeInsets.all(32),
          )
        ],
      ),
    );
  }
}
