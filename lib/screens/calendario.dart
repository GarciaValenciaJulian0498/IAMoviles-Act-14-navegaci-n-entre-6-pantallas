import 'package:flutter/material.dart';

class CalendarioScreen extends StatefulWidget {
  const CalendarioScreen({super.key});

  @override
  State<CalendarioScreen> createState() => _CalendarioScreenState();
}

class _CalendarioScreenState extends State<CalendarioScreen> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 95, 145),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Selecciona una fecha", style: TextStyle(color: Colors.white, fontSize: 20)),
          SizedBox(
            height: 400,
            child: Theme(
              data: ThemeData.dark(),
              child: CalendarDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2030),
                onDateChanged: (date) => selectedDate = date,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 151, 24)),
                onPressed: () => Navigator.pop(context), 
                child: const Text("Cancelar")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 30, 198, 122)),
                onPressed: () => Navigator.pop(context, selectedDate), 
                child: const Text("Aceptar")
              ),
            ],
          )
        ],
      ),
    );
  }
}