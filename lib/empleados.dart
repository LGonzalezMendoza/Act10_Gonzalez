import 'package:flutter/material.dart';

class Empleados extends StatelessWidget {
  const Empleados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empleados',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            )),
        backgroundColor: Color(0xff00fff3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _CustomTextField(label: "ID empleado"),
            SizedBox(height: 16), // Espacio entre los campos
            _CustomTextField(label: 'Nombre de Empleado'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Sueldo'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Hora de entrada'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Puesto'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Edad'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Numero de telefono'),
            SizedBox(height: 16),
            _CustomTextField(label: 'Direccion'),
          ],
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
