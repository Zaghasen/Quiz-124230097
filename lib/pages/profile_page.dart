import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey[200], // background abu lembut
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.deepPurple[700],
                    child: const Text(
                      'ZG',
                      style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Zalfa Ghalib Hussein',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  ListTile(
                    leading: Icon(Icons.badge, color: Colors.deepPurple[700]),
                    title: const Text(
                      'NIM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('124230097'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.deepPurple[700],
                    ),
                    title: const Text(
                      'Tempat Lahir',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Magelang'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.cake, color: Colors.deepPurple[700]),
                    title: const Text(
                      'Tanggal Lahir',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('11 November 2004'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Icon(Icons.hiking, color: Colors.deepPurple[700]),
                    title: const Text(
                      'Hobi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('Mendaki Gunung'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
