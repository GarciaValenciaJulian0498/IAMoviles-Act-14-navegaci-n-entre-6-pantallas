import 'package:flutter/material.dart';
import '../models/carro.dart';

class DetalleProductoScreen extends StatefulWidget {
  const DetalleProductoScreen({super.key});

  @override
  State<DetalleProductoScreen> createState() => _DetalleProductoScreenState();
}

class _DetalleProductoScreenState extends State<DetalleProductoScreen> {
  @override
  Widget build(BuildContext context) {
    final carro = ModalRoute.of(context)!.settings.arguments as Carro;

    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD1DC),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [const Icon(Icons.person), const SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Image.network(carro.imagen)),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(carro.nombre, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                        Text(carro.precio, style: const TextStyle(color: Colors.greenAccent, fontSize: 18)),
                        const SizedBox(height: 15), // Espacio entre encabezado y botones
                        
                        Wrap(
                          runSpacing: 12, 
                          children: [
                            // Botón Favoritos
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange, 
                                fixedSize: const Size(250, 40),
                              ),
                              icon: Icon(carro.esFavorito ? Icons.favorite : Icons.favorite_border),
                              label: Text(carro.esFavorito ? "Eliminar de favoritos" : "Agregar a favoritos"),
                              onPressed: () => setState(() => carro.esFavorito = !carro.esFavorito),
                            ),
                            
                            // Botón Calendario
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pinkAccent, 
                                fixedSize: const Size(250, 40),
                              ),
                              icon: const Icon(Icons.calendar_month),
                              label: Text(carro.fechaPrueba == null 
                                ? "Solicitar prueba" 
                                : "Prueba agendada"),
                              onPressed: () async {
                                final fecha = await Navigator.pushNamed(context, '/calendario') as DateTime?;
                                if (fecha != null) setState(() => carro.fechaPrueba = fecha);
                              },
                            ),
                            
                            // Botón Comprar
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green, 
                                fixedSize: const Size(250, 40),
                              ),
                              icon: const Icon(Icons.shopping_bag),
                              label: const Text("Comprar"),
                              onPressed: () => Navigator.pushNamed(context, '/pago'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // Selector de colores simulado
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.chevron_left, color: Colors.white),
                ...List.generate(5, (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 20, height: 20,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.primaries[index]),
                )),
                const Icon(Icons.chevron_right, color: Colors.white),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(alignment: Alignment.centerLeft, child: Text("DETALLES", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
            ),
            const Divider(color: Colors.white24, thickness: 2, indent: 16, endIndent: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(carro.detalles, style: const TextStyle(color: Colors.white70)),
            ),
          ],
        ),
      ),
    );
  }
}