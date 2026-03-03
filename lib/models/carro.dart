class Carro {
  final int id;
  final String nombre;
  final String precio;
  final String imagen;
  final String detalles;
  bool esFavorito;
  DateTime? fechaPrueba;

  Carro({
    required this.id,
    required this.nombre,
    required this.precio,
    required this.imagen,
    required this.detalles,
    this.esFavorito = false,
    this.fechaPrueba,
  });
}

// Lista global para simular una base de datos
List<Carro> listaCarros = [
  Carro(id: 1, nombre: "BMW M3", precio: "\$1,500,000", imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-14-navegaci-n-entre-6-pantallas/refs/heads/main/carros/bmw.jpg", detalles: "Motor 3.0L Twin-Turbo, 503 HP."),
  Carro(id: 2, nombre: "Chevrolet Suburban", precio: "\$1,800,000", imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-14-navegaci-n-entre-6-pantallas/refs/heads/main/carros/suburban.jpg", detalles: "Capacidad para 8 pasajeros, motor V8."),
  Carro(id: 3, nombre: "RAM TRX", precio: "\$2,100,000", imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-14-navegaci-n-entre-6-pantallas/refs/heads/main/carros/trx1.jpg", detalles: "Motor Supercharged 6.2L HEMI V8."),
  Carro(id: 4, nombre: "RAM TRX Black", precio: "\$2,200,000", imagen: "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAMoviles-Act-14-navegaci-n-entre-6-pantallas/refs/heads/main/carros/trx.jpg", detalles: "Edición especial con acabados en negro."),
];