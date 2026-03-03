import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC), // Rosa claro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Agencia de Carros",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 20),
            Image.network(
              "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-14-navegaci-n-entre-6-pantallas/refs/heads/main/carros/carro.png", // PNG de un auto
              height: 200,
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(context, 0),
    );
  }

  Widget _buildBottomBar(BuildContext context, int index) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: index,
      backgroundColor: Colors.blueAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.directions_car), label: "Catálogo"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoritos"),
        BottomNavigationBarItem(icon: Icon(Icons.palette), label: "Tema"),
      ],
      onTap: (i) {
        if (i == 0) Navigator.pushReplacementNamed(context, '/');
        if (i == 1) Navigator.pushReplacementNamed(context, '/catalogo');
        if (i == 2) Navigator.pushReplacementNamed(context, '/favoritos');
      },
    );
  }
}