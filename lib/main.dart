import 'package:act10_gonzalez0490master/pantallaini.dart';
import 'package:flutter/material.dart';
import 'package:act10_gonzalez0490master/clientes.dart';
import 'package:act10_gonzalez0490master/empleados.dart';
import 'package:act10_gonzalez0490master/ventas.dart';
import 'package:act10_gonzalez0490master/productos.dart';
import 'package:act10_gonzalez0490master/proveedor.dart';

void main() => runApp(MiApp0490());

class MiApp0490 extends StatelessWidget {
  const MiApp0490({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Pantalla1_0490(),
        "/Clientes": (context) => Clientes(),
        "/Empleados": (context) => Empleados(),
        "/Ventas": (context) => Ventas(),
        "/Productos": (context) => Productos(),
        "/Proveedor": (context) => Proveedor(),
      }, //Fin ruta paginas
    ); //Fin de material
  } //Fin widget
}
