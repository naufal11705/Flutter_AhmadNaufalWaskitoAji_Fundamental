import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var FirstField = TextEditingController();
  var SecondField = TextEditingController();

  void add() {
    setState(() {
    });
  }

  void substract() {
    setState(() {
    });
  }

  void multiply() {
    setState(() {
    });
  }

  void divide() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            Text("Result = ", style: const TextStyle(fontSize: 30)),
            textField(FirstField, "Enter First Number"),
            textField(SecondField, "Enter Second Number"),
            button(add, "Add"),
            button(substract, "Substract"),
            button(multiply, "Multiply"),
            button(divide, "Divide"),
          ],
        ),
      ),
    );
  }
}

Widget textField(TextEditingController controller, String labelText) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(5),
    child: TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Mohon Masukkan Angka';
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: labelText,
          ),
    ),
  );
}

Widget button(VoidCallback onPressed, String name) {
  return Container(
    child: ElevatedButton(
        onPressed: onPressed,
        child: Text(name)),
  );
}

