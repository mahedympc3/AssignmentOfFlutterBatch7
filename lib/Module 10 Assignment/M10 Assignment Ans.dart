import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red, // টেক্সট এর রং লাল
              fontWeight: FontWeight.bold, // টেক্সট বোল্ড
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10), // কিছু স্পেস যোগ করুন
          Text(
            'Welcome to Flutter!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 20), // কিছু স্পেস যোগ করুন
          Image.network(
            'https://example.com/image.png', // আপনার ইমেজ URL দিন
            height: 200,
            width: 200,
          ),
          SizedBox(height: 20), // কিছু স্পেস যোগ করুন
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Button Pressed!'),
                ),
              );
            },
            child: Text('Press Me'),
            style: ElevatedButton.styleFrom(
              primary: Colors.green, // বাটনের রং সবুজ
            ),
          ),
        ],
      ),
    );
  }
}
