import 'package:flutter/material.dart';

class WisataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),
      ),
      body: ListView(
        children: [
          wisataCard('Pantai Kuta', 'Bali', 'assets/images/pantai_kuta.jpg'),
          wisataCard('Candi Borobudur', 'Magelang', 'assets/images/candi_borobudur.jpg'),
          wisataCard('Gunung Bromo', 'Jawa Timur', 'assets/images/gunung_bromo.jpg'),
        ],
      ),
    );
  }

  Widget wisataCard(String title, String location, String imagePath) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              location,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: WisataPage(),
  ));
}