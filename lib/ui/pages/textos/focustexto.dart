import 'package:flutter/material.dart';

class CajaTextoFocus extends StatefulWidget {
  const CajaTextoFocus({Key? key}) : super(key: key);

  @override
  State<CajaTextoFocus> createState() => _CajaTextoFocusState();
}

class _CajaTextoFocusState extends State<CajaTextoFocus> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
  TextEditingController c5 = TextEditingController();
  TextEditingController c6 = TextEditingController();
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();
  FocusNode f6 = FocusNode();

  @override
  Widget build(BuildContext context) {
    double largo = MediaQuery.of(context).size.width;
    double alto = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("Focus")),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) =>
                        FocusScope.of(context).requestFocus(f2),
                    focusNode: f1,
                    controller: c1,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        counterText: "",
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ),
                SizedBox(
                  width: largo * 0.01,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) =>
                        FocusScope.of(context).requestFocus(f3),
                    focusNode: f2,
                    controller: c2,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        counterText: "",
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ),
                SizedBox(
                  width: largo * 0.01,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) =>
                        FocusScope.of(context).requestFocus(f4),
                    focusNode: f3,
                    controller: c3,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        counterText: "",
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ),
                SizedBox(
                  width: largo * 0.01,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      FocusScope.of(context).requestFocus(f5);
                    },
                    focusNode: f4,
                    controller: c4,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        counterText: "",
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ),
                SizedBox(
                  width: largo * 0.01,
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) => setState(() {}),
                    focusNode: f5,
                    controller: c5,
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '0',
                        counterText: "",
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: alto * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(c1.text + c2.text + c3.text + c4.text + c5.text)],
            )
          ],
        ),
      ),
    );
  }
}
