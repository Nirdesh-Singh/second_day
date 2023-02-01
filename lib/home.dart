import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'email@gmail.com',
                    fillColor: Colors.grey,
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 25),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'password1234',
                    fillColor: Colors.grey,
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
