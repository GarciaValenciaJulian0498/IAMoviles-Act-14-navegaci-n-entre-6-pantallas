import 'package:flutter/material.dart';

class PagoScreen extends StatefulWidget {
  const PagoScreen({super.key});
  @override
  State<PagoScreen> createState() => _PagoScreenState();
}

class _PagoScreenState extends State<PagoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: const Color.fromARGB(255, 28, 220, 143),
              child: Column(
                children: [
                  TextField(decoration: const InputDecoration(labelText: "Titular", icon: Icon(Icons.person))),
                  TextField(decoration: const InputDecoration(labelText: "Num Tarjeta", icon: Icon(Icons.credit_card))),
                  TextField(decoration: const InputDecoration(labelText: "Fecha (MM/AA)", icon: Icon(Icons.calendar_today))),
                  TextField(decoration: const InputDecoration(labelText: "CVV", icon: Icon(Icons.lock))),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () => Navigator.pop(context), 
                  child: const Text("Cancelar")
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 28, 220, 143)),
                  onPressed: () => Navigator.pushNamed(context, '/catalogo'),
                  child: const Text("Aceptar")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
} 