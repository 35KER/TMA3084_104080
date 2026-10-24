import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const RestaurantMenuApp());
}

class RestaurantMenuApp extends StatelessWidget {
  const RestaurantMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AtmosFEAR Menu',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF9CD5FF),
      ),
      body: Container(
        color: const Color(0xFFEAF6FF),
        child: const Column(
          children: [
            MenuCard('ox.png', 'Oxygen'),
            MenuCard('co2.png', 'Carbon Dioxide'),
            MenuCard('haze.png', 'Haze'),
            MenuCard('ee.png', 'Eco Enzyme'),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(this.file, this.name, {super.key});

  final String file;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color(0xFFF7F8F0),
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset('assets/images/$file', width: 90, height: 90),
            const SizedBox(width: 20),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: const Color(0xFF2E2E2E),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(Icons.shopping_cart, color: Color(0xFF9CD5FF), size: 28),
          ],
        ),
      ),
    );
  }
}
