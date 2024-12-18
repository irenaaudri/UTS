import 'package:flutter/material.dart';

class TransportPage extends StatelessWidget {
  final String name;

  const TransportPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Find Transportation',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildGridItem(
                      'Plane', Icons.flight, const Color(0xFFFFF6E3)),
                  _buildGridItem('Train', Icons.train, const Color(0xFFFFF6E3)),
                  _buildGridItem(
                      'Bus', Icons.directions_bus, const Color(0xFFFFF6E3)),
                  _buildGridItem(
                      'Travel', Icons.directions_car, const Color(0xFFFFF6E3)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(String title, IconData icon, Color color) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48),
          const SizedBox(height: 8),
          Text(title,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
