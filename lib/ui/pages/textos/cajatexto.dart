import 'package:flutter/material.dart';

class CajaTexto extends StatefulWidget {
  const CajaTexto({Key? key}) : super(key: key);

  @override
  State<CajaTexto> createState() => _CajaTextoState();
}

class _CajaTextoState extends State<CajaTexto> {
  TextEditingController controltexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Manejo de Cajas de Texto')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              controller: controltexto,
              decoration: const InputDecoration(hintText: 'TextField con hint'),
            ),
            TextField(
              controller: controltexto,
              decoration:
                  const InputDecoration(labelText: 'TextField con Label'),
            ),
            // Tipo de Teclado - Cambiar los Teclados
            TextField(
              controller: controltexto,
              keyboardType: TextInputType
                  .number, //Cambiar los Diferentes Tipos de Teclado
              decoration:
                  const InputDecoration(labelText: 'Tipos de Teclado Numerico'),
            ),
            TextField(
              controller: controltexto,
              maxLength: 5,
              decoration: const InputDecoration(
                  labelText: 'Limitando el Tamaño a 5 Caracteres'),
            ),

            TextField(
              controller: controltexto,
              textCapitalization:
                  TextCapitalization.characters, // Probar Todas las Opciones
              decoration:
                  const InputDecoration(labelText: 'Usando Capitalizacion'),
            ),
            TextField(
              controller: controltexto,
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto'),
              decoration: const InputDecoration(labelText: 'Estilos al Texto'),
            ),
            TextField(
              controller: controltexto,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(labelText: 'Centrar Texto'),
            ),
            TextField(
              controller: controltexto,
              maxLines: 5,
              decoration: const InputDecoration(labelText: 'Varias Lineas'),
            ),
            TextField(
              controller: controltexto,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Ocultar el Texto'),
            ),
            TextField(
              controller: controltexto,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                  labelText: 'Ocultar el Texto con cambio de caracter'),
            ),
            TextField(
              controller: controltexto,
              decoration: const InputDecoration(prefixIcon: Icon(Icons.login)),
            ),
            TextField(
              controller: controltexto,
              decoration: const InputDecoration(
                  labelText: 'Decoration', icon: Icon(Icons.login)),
            ),
            TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: controltexto,
              decoration: InputDecoration(
                  prefix: controltexto.text == 'girar'
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.alarm)),
            ),

            TextField(
              controller: controltexto,
              decoration: const InputDecoration(
                  hintText: 'Hint con Estiilo',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow)),
            ),

            TextField(
              controller: controltexto,
              decoration: const InputDecoration(helperText: 'Ayuda al Texto'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controltexto,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Bordes'),
            ),
          ],
        ),
      ),
    );
  }
}
