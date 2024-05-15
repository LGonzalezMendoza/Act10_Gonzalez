import 'package:flutter/material.dart';

class Pantalla1_0490 extends StatelessWidget {
  const Pantalla1_0490({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tablas"),
        backgroundColor: Color(0xff73afc3),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Clientes");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffcd3434)), //Fin de onpressed
                child: const Text("Tabla a Clientes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Empleados");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00b8ff)), //Fin de onpressed
                child: Text("Tabla Empleados",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Ventas");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff73ff00)), //Fin de onpressed
                child: Text("Tabla Ventas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Productos");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0011ff)), //Fin de onpressed
                child: Text("Tabala Productos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Proveedor");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffe772c0)), //Fin de onpressed
                child: Text("Tabla Proveedor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ))),
          ], //Fin de niños
        ),
      ),
    ); //Fin Scalfold
  } //Fin widget
} //Fin pantalla inicial
