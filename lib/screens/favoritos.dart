import 'package:flutter/material.dart';
import '../models/carro.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Filtramos la lista global
    final favoritos = listaCarros.where((c) => c.esFavorito).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC),
      body: favoritos.isEmpty
          ? const Center(child: Text("No tienes favoritos aún", style: TextStyle(color: Colors.white)))
          : GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.75, mainAxisSpacing: 10, crossAxisSpacing: 10,
              ),
              itemCount: favoritos.length,
              itemBuilder: (context, index) {
                final carro = favoritos[index];
                return Card(
                  child: Column(
                    children: [
                      Image.network(carro.imagen, height: 100),
                      Text(carro.nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(carro.precio),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () => Navigator.pushNamed(context, '/detalle', arguments: carro),
                        child: const Text("Detalles"),
                      )
                    ],
                  ),
                );
              },
            ),
      bottomNavigationBar: _buildBottomBar(context, 2),
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