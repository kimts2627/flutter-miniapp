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

          // Image section!!!!!!!!!!!
          Image.network(
            'https://picsum.photos/400/600',
            height: 240,
            width: 600,
            fit: BoxFit.cover,
          ),

          // Title section!!!!!!!!!!
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
                Icon(Icons.star, color: Colors.red,),
                Text('01'),
              ],
            ),
            padding: EdgeInsets.all(32),
          ),

          // Button section!!!!!!!!!!
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call, color: Colors.blue),
                  Text('Call', style: TextStyle(
                    color: Colors.blue)
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.near_me, color: Colors.blue),
                  Text('Route', style: TextStyle(
                      color: Colors.blue)
                  )
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share, color: Colors.blue),
                  Text('Share', style: TextStyle(
                      color: Colors.blue)
                  )
                ],
              )
            ],
          ),

          // Text section!!!!!!!!!
          Container(
            padding: EdgeInsets.all(32),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin viverra,'
                  ' turpis tincidunt ornare congue, quam ligula volutpat est,'
                  ' a fermentum nulla elit placerat ex. Sed magna est, laoreet ac'
                  ' sagittis efficitur, vehicula in lorem. Etiam mattis mi a dolor'
                  ' posuere congue. Praesent at porttitor massa, rutrum volutpat dolor.'
            ),
          ),
        ],
      ),
    );
  }
}
