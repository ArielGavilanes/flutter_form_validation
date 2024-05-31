import 'package:flutter/material.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  String _valor = '';
  bool _isCasado = false;
  bool _isSoltero = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _cedulaController = TextEditingController();
  final TextEditingController _nombresController = TextEditingController();
  final TextEditingController _apellidosController = TextEditingController();
  final TextEditingController _fechaController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Formulario Validado',
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Formulario',
                    style: TextStyle(fontSize: 25),
                  ),
                  const Divider(
                    height: 20,
                    color: Colors.white,
                  ),
                  TextFormField(
                    controller: _cedulaController,
                    decoration: InputDecoration(
                      labelText: 'Cedula',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa una cédula';
                      }
                      return null;
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  TextFormField(
                    controller: _nombresController,
                    decoration: InputDecoration(
                      labelText: 'Nombres',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu nombre';
                      }
                      return null;
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  TextFormField(
                    controller: _apellidosController,
                    decoration: InputDecoration(
                      labelText: 'Apellidos',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tus apellidos';
                      }
                      return null;
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  TextFormField(
                    controller: _fechaController,
                    decoration: InputDecoration(
                      labelText: 'Fecha de nacimiento',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu fecha de nacimiento';
                      }
                      return null;
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  TextFormField(
                    controller: _edadController,
                    decoration: InputDecoration(
                      labelText: 'Edad',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingresa tu edad';
                      }
                      return null;
                    },
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  const Text(
                    'Seleccione una genero:',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.white,
                  ),
                  RadioListTile<String>(
                    title: const Text('Masculino'),
                    value: 'opcion1',
                    groupValue: _valor,
                    onChanged: (value) {
                      setState(() {
                        _valor = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Femenino'),
                    value: 'opcion2',
                    groupValue: _valor,
                    onChanged: (value) {
                      setState(() {
                        _valor = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: const Text('Otro'),
                    value: 'opcion3',
                    groupValue: _valor,
                    onChanged: (value) {
                      setState(() {
                        _valor = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Casado'),
                    value: _isCasado,
                    onChanged: (newValue) {
                      setState(() {
                        _isCasado = newValue!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Soltero'),
                    value: _isSoltero,
                    onChanged: (newValue) {
                      setState(() {
                        _isSoltero = newValue!;
                      });
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('Formulario válido, puedes continuar...');
                            }
                          },
                          child: const Text('Siguiente')),
                      TextButton(onPressed: () {}, child: const Text('Salir'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
