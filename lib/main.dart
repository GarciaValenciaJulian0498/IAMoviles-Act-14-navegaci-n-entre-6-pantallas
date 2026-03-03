import 'package:flutter/material.dart';
import 'screens/inicio.dart';
import 'screens/catalogo.dart';
import 'screens/detalle_producto.dart';
import 'screens/pago.dart';
import 'screens/calendario.dart';
import 'screens/favoritos.dart';

void main() => runApp(const AgenciaApp());

class AgenciaApp extends StatelessWidget {
  const AgenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agencia de Carros',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF121212), // Fondo oscuro
        primaryColor: Colors.blueAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioScreen(),
        '/catalogo': (context) => const CatalogoScreen(),
        '/detalle': (context) => const DetalleProductoScreen(),
        '/pago': (context) => const PagoScreen(),
        '/calendario': (context) => const CalendarioScreen(),
        '/favoritos': (context) => const FavoritosScreen(),
      },
    );
  }
}