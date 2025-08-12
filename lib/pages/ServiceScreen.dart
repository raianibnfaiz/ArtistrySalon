import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            _buildServiceTile('Hair Services', Icons.content_cut, '\$25-80', Colors.blue),
            _buildServiceTile('Nail Services', Icons.back_hand, '\$15-45', Colors.green),
            _buildServiceTile('Facial Treatments', Icons.face, '\$30-90', Colors.orange),
            _buildServiceTile('Body Massage', Icons.spa, '\$50-120', Colors.purple),
            _buildServiceTile('Eyebrow Threading', Icons.remove_red_eye, '\$12-25', Colors.teal),
            _buildServiceTile('Makeup Services', Icons.brush, '\$40-100', Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceTile(String title, IconData icon, String price, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            radius: 30,
            child: Icon(icon, color: color, size: 30),
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Text(
            price,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}