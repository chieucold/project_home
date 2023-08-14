import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: const [
          Text("Home Page"),
          Text('Edit home'),
          SizedBox(
            height: 1,
          ),
        ],
      ),
    );
  }
}
