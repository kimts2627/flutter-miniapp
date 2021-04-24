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

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  bool star = false;
  int count = 41;

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Image.network(
      'https://picsum.photos/400/600',
      height: 240,
      width: 600,
      fit: BoxFit.cover,
    );

    Widget titleSection = Container(
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
          IconButton(
            icon: star ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red,
            onPressed: (){
              setState(() {
                if(star) {
                  count -= 1;
                  star = !star;
                } else {
                  count += 1;
                  star = !star;
                }
              });
            },
          ),
          Text('$count'),
        ],
      ),
      padding: EdgeInsets.all(32),
    );

    Widget buttonSection = Row(
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
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin viverra,'
              ' turpis tincidunt ornare congue, quam ligula volutpat est,'
              ' a fermentum nulla elit placerat ex. Sed magna est, laoreet ac'
              ' sagittis efficitur, vehicula in lorem. Etiam mattis mi a dolor'
              ' posuere congue. Praesent at porttitor massa, rutrum volutpat dolor.'
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Image example'),
      ),
      body: ListView(
        children: [
          imageSection,
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}

