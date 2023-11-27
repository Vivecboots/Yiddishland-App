import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: Drawer(
          // Drawer contents
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomCard(
              imageUrl: 'https://via.placeholder.com/100',
              cardContent: 'Card 1',
            ),
            // ... Add more CustomCard widgets or other content
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Floating action button functionality
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String cardContent;

  const CustomCard({required this.imageUrl, required this.cardContent});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl),
          Text(cardContent),
        ],
      ),
    );
  }
}

// Define BadgeWidget and other custom widgets here as needed
