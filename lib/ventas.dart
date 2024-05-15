import 'package:flutter/material.dart';

class Ventas extends StatelessWidget {
  const Ventas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        backgroundColor: Color(0xff09ff00),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _CustomTextField(label: "ID cliente"),
              SizedBox(height: 16), // Espacio entre los campos
              _CustomTextField(label: 'ID Venta'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Numero de telefono'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Direccion'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Precio Producto'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Costo Envio'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Correo Electronico'),
              SizedBox(height: 16),
              _CustomTextField(label: 'Nombre de producto'),
              SizedBox(height: 16), // Espacio al final de la pantalla
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatefulWidget {
  final String label;

  const _CustomTextField({Key? key, required this.label}) : super(key: key);

  @override
  __CustomTextFieldState createState() => __CustomTextFieldState();
}

class __CustomTextFieldState extends State<_CustomTextField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.label,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: _isFocused ? Colors.blue : Colors.grey,
              width: 2.0), // Grosor de la línea
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue, width: 2.0), // Grosor de la línea
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onChanged: (_) {
        setState(() {
          _isFocused = false;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}
