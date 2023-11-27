import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home Page',
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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button pressed');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add your menu item 1 functionality here
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add your menu item 2 functionality here
              },
            ),
            // Add more ListTile widgets for additional menu items
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to the Flutter App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            CustomCard(
              imageUrl: 'https://via.placeholder.com/100',
              cardContent: 'Card 1',
            ),
            SizedBox(height: 16),
            CustomCard(
              imageUrl: 'https://via.placeholder.com/100',
              cardContent: 'Card 2',
            ),
            SizedBox(height: 16),
            CustomCard(
              imageUrl: 'https://via.placeholder.com/100',
              cardContent: 'Card 3',
            ),
            SizedBox(height: 16),
            CustomCard(
              imageUrl: 'https://via.placeholder.com/100',
              cardContent: 'Card 4',
            ),
            SizedBox(height: 16),
            // Add more widgets as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating action button pressed');
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

class BadgeWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;

  BadgeWidget({required this.label, required this.icon, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      avatar: Icon(icon, color: Colors.white),
      backgroundColor: backgroundColor,
    );
  }
}
