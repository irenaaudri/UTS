import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final String name;

  const ProfilePage({super.key, required this.name});

  @override
  State<ProfilePage> createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/736x/fc/45/e2/fc45e29103799de4d35b995502809eca.jpg',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Text(
                'Irena Audri Citra Fergia',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF6E3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const SizedBox(height: 200),
            ),
          ],
        ),
      ),
    );
  }
}
